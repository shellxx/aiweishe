package com.waishe.dao.Impl;

import com.waishe.dao.AdminDao;
import com.waishe.domain.Admin;
import com.waishe.utils.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;
import java.util.List;

public class AdminDaoImpl implements AdminDao {
    //登陆
    @Override
    public Admin findByUsernameAndPwd(String username, String password) {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select * from customer where cus_account=? and cus_passw=?";
        try {
            Admin admin = queryRunner.query(sql, new BeanHandler<Admin>(Admin.class), username, password);
            return admin;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int insertCustomer(Admin customer) {
        return 0;
    }

    @Override
    public int deleteCustomer(Integer id) {
        return 0;
    }

    @Override
    public int updateCustomer(Admin customer) {
        return 0;
    }

    @Override
    public List<Admin> findAllCustomer() {
        return null;
    }
}
