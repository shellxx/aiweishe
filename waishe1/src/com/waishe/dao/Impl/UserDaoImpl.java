package com.waishe.dao.Impl;

import com.waishe.dao.UserDao;
import com.waishe.domain.User;
import com.waishe.utils.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

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

    @Override
    public int deleteUser(String id) {
        return 0;
    }

    @Override
    public int updateUser(User user) {
        return 0;
    }

    @Override
    public List<User> findAllUser() {
        return null;
    }
}
