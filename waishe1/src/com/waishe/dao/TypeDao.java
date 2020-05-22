package com.waishe.dao;

import com.waishe.domain.Type;

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
     * 通过id删除商品类型
     * @param id
     * @return
     */
    int delete(Integer id);

    /**
     * 修改商品类型
     * @param type
     * @return
     */
    int update(Type type);
}
