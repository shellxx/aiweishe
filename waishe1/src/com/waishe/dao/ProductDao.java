package com.waishe.dao;

import com.waishe.domain.Product;

import java.util.List;

public interface ProductDao {
    /**
     * 添加商品
     * @param product
     */
    int insertProduct(Product product);
    /**
     * 根据id删除商品
     * @param id
     * @return
     */
    int deleteProduct(String id);
    /**
     * 修改商品
     * @param product
     * @return
     */
    int updateProduct(Product product);
    /**
     * 查找所有商品
     */
    List<Product> findAllProduct();
}
