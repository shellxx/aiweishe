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
    //查找所有商品
    List<Product> findAllProduct(int index,int currentPage);
    //查找所有商品
    List<Product> findAllProductBytid(int tid,int index,int currentPage);
    //查找商品的数量
    int findProductCount();
    //查找某个商品类型的商品的数量
    int findProductCountBytid(int tid);
    //查找新品
    List<Product> findNewProduct();
    //查找热门商品
    List<Product> findHotProduct();
    //查找两个折扣商品
    List<Product> findDiscountProduct();
    //查找首页推荐的商品
    List<Product> findRecommendProduct();
    //通过pid查找商品
    Product findByid(String pid);
}
