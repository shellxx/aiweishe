package com.waishe.service.Impl;

import com.waishe.dao.Impl.TypeDaoImpl;
import com.waishe.dao.TypeDao;
import com.waishe.domain.Type;
import com.waishe.service.TypeService;

import java.sql.SQLException;
import java.util.List;

public class TypeServiceImpl implements TypeService {
    private TypeDao typeDao = new TypeDaoImpl();
    @Override
    public List<Type> findAll() {
        return typeDao.findAllType();
    }

    @Override
    public int deleteType(String id) throws SQLException {
        return typeDao.deleteType(id);
    }
}
