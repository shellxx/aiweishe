package com.waishe.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class C3p0Utils {
    private static DataSource dataSource = new ComboPooledDataSource();
    //获取dataSource
    public static DataSource getDataSource(){
        return dataSource;
    }
    //获取链接
    public static Connection getConnection(){
        try {
            return getDataSource().getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}




