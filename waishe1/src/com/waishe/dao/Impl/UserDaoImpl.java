package com.waishe.dao.Impl;

import com.waishe.dao.UserDao;
import com.waishe.domain.Product;
import com.waishe.domain.User;
import com.waishe.utils.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public int insertUser(User user) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "insert into user values(?,?,?,?,?,?,?)";
        try {
            int result = queryRunner.update(sql, user.getUid(), user.getU_username(), user.getU_password(), user.getU_email(), user.getU_phone(),
                    user.getU_name(), user.getU_address());
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public User findUserByUsernameAndPassword(String username, String password) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select * from user where u_username=? and u_password = ?";
        try {
            User user = queryRunner.query(sql, new BeanHandler<User>(User.class), username, password);
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public int deleteUser(String  id) throws SQLException {
        //创建QueryRunner
        QueryRunner qr=new QueryRunner(C3p0Utils.getDataSource());
        //执行update
        String sql ="delete from user where uid =?";
        return qr.update(sql,id);
    }
    @Override
    public int updateUser(User user) throws SQLException {
        //创建QueryRunner
        QueryRunner qr=new QueryRunner(C3p0Utils.getDataSource());
        //执行update
        String sql ="update user set u_username=?,u_password=?,u_email=?,u_phone=?,u_name=?,u_address=? where uid=?";
        return  qr.update(sql,user.getU_username(),user.getU_password(),user.getU_email(),user.getU_phone(),user.getU_name(),user.getU_address() ,user.getUid());
    }

    @Override
    public User selectUserById(String id) throws SQLException {
        QueryRunner qr= new QueryRunner(C3p0Utils.getDataSource());
        return qr.query("select * from user where uid = ?",new BeanHandler<User>(User.class),id);
    }

    //查找当前用户的心愿单
    @Override
    public List<Product> findWishlist(String uid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select w.*,p.*,u.*,img.*\n" +
                "from user u,product p,wishlist w,pimg img\n" +
                "where u.uid = w.uid and p.pid = w.pid and img.pid = p.pid and w.uid=?";
        try {
            List<Product> products = queryRunner.query(sql, new BeanListHandler<Product>(Product.class), uid);
            return products;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
//添加心愿单
    @Override
    public int addWishlist(String uid, String pid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "insert into wishlist(uid,pid) VALUES(?,?)";
        try {
            int update = queryRunner.update(sql, uid, pid);
            return update;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public int deleteWishlist(String uid, String pid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "delete from wishlist where uid = ? and pid =?";
        try {
            int update = queryRunner.update(sql, uid, pid);
            return update;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public Product findWishlistByone(String uid, String pid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select * from wishlist where uid = ? and pid =?";
        try {
            Product query = queryRunner.query(sql, new BeanHandler<Product>(Product.class), uid, pid);
            return query;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<User> findAllUser(){
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select * from user";
        try {
            List<User> users = queryRunner.query(sql, new BeanListHandler<User>(User.class));
            return users;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
