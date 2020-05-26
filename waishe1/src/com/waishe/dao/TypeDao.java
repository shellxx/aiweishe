package com.waishe.dao;

import com.waishe.domain.Type;

import java.sql.SQLException;
import java.util.List;

public interface TypeDao {
    /**
     * 查找所有商品类型
     * @return
     */
    List<Type> findAllType();

    /**
     * 添加商品类型
     * @param type
     * @return
     */
    int insert(Type type);

    /**
     * 根据id删除商品
     * @param id
     * @return
     */
    int deleteType(String id) throws SQLException;

    /**
     * 修改商品类型
     * @param type
     * @return
     */
    int update(Type type);
}
