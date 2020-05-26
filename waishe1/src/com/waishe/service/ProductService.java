package com.waishe.service;

import com.waishe.domain.PageBean;
import com.waishe.domain.Product;

import java.sql.SQLException;
import java.util.List;

public interface ProductService {

    //查找新品
    List<Product> findNewProduct();
     //查找热门商品
    List<Product> findHotProduct();
    //查找折扣商品 2个
    List<Product> findDiscountProduct();
    //查找推荐的产品
    List<Product> findRecommedProduct();
    //查找所有商品
    PageBean<Product> findAllProduct(int count, int currentPage);
    //查找某个商品类型的所有商品
    PageBean<Product> findAllProductBytid(int tid, int count, int currentPage);
    //通过pid查找商品
    Product findByID(String pid);

    List<Product> findAllProduct() throws SQLException;
    /**
     * 根据id删除商品
     * @param id
     * @return
     */
    int deleteProduct(String id) throws SQLException;
    /**
     * 修改商品
     * @param product
     * @return
     */
    int updateProduct(Product product) throws SQLException;


}
