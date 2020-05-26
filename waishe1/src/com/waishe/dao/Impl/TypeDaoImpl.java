package com.waishe.dao.Impl;

import com.waishe.dao.TypeDao;
import com.waishe.domain.Type;
import com.waishe.utils.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class TypeDaoImpl implements TypeDao {
    @Override
    public List<Type> findAllType() {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select * from type ";
        try {
            List<Type> types = queryRunner.query(sql, new BeanListHandler<Type>(Type.class));
            return types;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int insert(Type type) {
        return 0;
    }

    @Override
    public int deleteType(String id) throws SQLException {
        //创建QueryRunner
        QueryRunner qr=new QueryRunner(C3p0Utils.getDataSource());
        //执行update
        String sql ="delete from type where t_id = ?";
        return qr.update(sql,id);
    }

    @Override
    public int update(Type type) {
        return 0;
    }
}
