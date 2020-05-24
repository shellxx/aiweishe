package com.waishe.dao.Impl;

import com.waishe.dao.ProductDao;
import com.waishe.domain.Product;
import com.waishe.utils.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class ProductDaoImpl implements ProductDao {
    @Override
    public int insertProduct(Product product) {
        return 0;
    }

    @Override
    public int deleteProduct(String id) {
        return 0;
    }

    @Override
    public int updateProduct(Product product) {
        return 0;
    }
    //查找所有商品
    @Override
    public List<Product> findAllProduct(int index,int currentPage) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select p.*,img.* \n" +
                "from product p , pimg img \n" +
                "where p.pid = img.pid and p.pflag=0  ORDER BY p.sales desc limit ?,?";
        try {
            List<Product> query = queryRunner.query(sql, new BeanListHandler<Product>(Product.class), index, currentPage);
            return query;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    //查找某个商品类型de所有商品
    @Override
    public List<Product> findAllProductBytid(int tid, int index, int currentPage) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select p.*,img.* \n" +
                "from product p , pimg img \n" +
                "where p.pid = img.pid and p.pflag=0 and t_id = ?  ORDER BY p.sales desc limit ?,?";
        try {
            List<Product> query = queryRunner.query(sql, new BeanListHandler<Product>(Product.class), tid, index, currentPage);
            return query;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int findProductCount() {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select count(*) from product WHERE pflag=0";
        try {
            //将long型转为int
            Number query = (Number) queryRunner.query(sql, new ScalarHandler());
            return query.intValue();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
//查找某个类型商品的数量
    @Override
    public int findProductCountBytid(int tid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select count(*) from product WHERE pflag=0 and t_id=?";
        try {
            //将long型转为int
            Number query = (Number) queryRunner.query(sql, new ScalarHandler(),tid);
            return query.intValue();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public List<Product> findNewProduct() {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select p.*,img.img_t1 \n" +
                "from product p , pimg img \n" +
                "where p.pid = img.pid and p.pflag=0 order by p.pdate desc limit 0,8";
        try {
            List<Product> products = queryRunner.query(sql, new BeanListHandler<Product>(Product.class));
            return products;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Product> findHotProduct() {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select p.*,img.img_t1 \n" +
                "from product p , pimg img \n" +
                "where p.pid = img.pid and p.pflag = 0 and p.is_hot !=0 ORDER BY p.is_hot desc limit 0,8;";
        try {
            List<Product> products = queryRunner.query(sql, new BeanListHandler<Product>(Product.class));
            return products;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    //查找两个这块商品
    @Override
    public List<Product> findDiscountProduct() {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select p.*,img.img_t1 \n" +
                "from product p , pimg img \n" +
                "where p.pid = img.pid and p.pflag=0 and p.discount!=0 order by p.discount limit 0,2";
        try {
            List<Product> query = queryRunner.query(sql, new BeanListHandler<Product>(Product.class));
            return query;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    //查找首页推荐的产品
    @Override
    public List<Product> findRecommendProduct() {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select p.*,img.*\n" +
                "from product p , pimg img \n" +
                "where p.pid = img.pid and p.pflag=0  and p.recommend!=0 order by p.pdate desc";
        try {
            List<Product> query = queryRunner.query(sql, new BeanListHandler<Product>(Product.class));
            return query;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public Product findByid(String pid) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select p.*,img.* \n" +
                "from product p , pimg img \n" +
                "where p.pid = img.pid and p.pid=?";
        try {
            Product product = queryRunner.query(sql, new BeanHandler<Product>(Product.class), pid);
            return product;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
