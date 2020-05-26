package com.waishe.service;

import com.waishe.domain.Type;

import java.sql.SQLException;
import java.util.List;

public interface TypeService {
    List<Type> findAll();
    /**
     * 根据id删除商品
     * @param id
     * @return
     */
    int deleteType(String id) throws SQLException;
}
