package com.waishe.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class C3p0Utils {
    private static DataSource dataSource = new ComboPooledDataSource();
    private static ThreadLocal<Connection> tl = new ThreadLocal<Connection>();
    //获取dataSource
    public static DataSource getDataSource(){
        return dataSource;
    }
    //获取链接
    public static Connection getConnection() throws SQLException {
        Connection con = tl.get();
        if (con == null) {
            con = dataSource.getConnection();
            tl.set(con);
        }
        return con;
    }
    // 开启事务
    public static void startTransaction() throws SQLException {
        Connection con = getConnection();
        if (con != null) {
            con.setAutoCommit(false);
        }
    }

    // 事务回滚
    public static void rollback() throws SQLException {
        Connection con = getConnection();
        if (con != null) {
            con.rollback();
        }
    }

    // 提交并且 关闭资源及从ThreadLocall中释放
    public static void commitAndRelease() throws SQLException {
        Connection con = getConnection();
        if (con != null) {
            con.commit(); // 事务提交
            con.close();// 关闭资源
            tl.remove();// 从线程绑定中移除
        }
    }
}




