package com.waishe.service.Impl;

import com.waishe.dao.Impl.ProductDaoImpl;
import com.waishe.dao.ProductDao;
import com.waishe.domain.PageBean;
import com.waishe.domain.Product;
import com.waishe.service.ProductService;

import java.sql.SQLException;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    private ProductDao productDao = new ProductDaoImpl();
    //查找新品
    @Override
    public List<Product> findNewProduct() {
        return productDao.findNewProduct();
    }

    //查找热门商品
    @Override
    public List<Product> findHotProduct() {
        return productDao.findHotProduct();
    }
    //查找两个折扣的商品-首页
    @Override
    public List<Product> findDiscountProduct() {
        return productDao.findDiscountProduct();
    }
    //查找推荐的产品
    @Override
    public List<Product> findRecommedProduct() {
        return productDao.findRecommendProduct();
    }
    //查找所有商品
    @Override
    public PageBean<Product> findAllProduct(int count, int currentPage) {
        //声明一个pagebean对象
        PageBean<Product> pageBean = new PageBean<>();
        //设置每页显示的数量
        pageBean.setCount(count);
        //设置当前页
        pageBean.setCurrentPage(currentPage);
        //设置商品总数
        //先调用dao查找
        int productCount = productDao.findProductCount();
        pageBean.setTotalCount(productCount);
        //设置商品显示的总页数
        pageBean.setTotalPage((int) Math.ceil((double) productCount/count));
        //查找每页的商品集合
        List<Product> products = productDao.findAllProduct((currentPage - 1) * count, count);
        pageBean.setList(products);
        return pageBean;
    }
//查找某个商品类型的所有商品
    @Override
    public PageBean<Product> findAllProductBytid(int tid, int count, int currentPage) {
        //声明一个pagebean对象
        PageBean<Product> pageBean = new PageBean<>();
        //设置每页显示的数量
        pageBean.setCount(count);
        //设置当前页
        pageBean.setCurrentPage(currentPage);
        //设置商品总数
        //先调用dao查找
        int productCount = productDao.findProductCountBytid(tid);
        pageBean.setTotalCount(productCount);
        //设置商品显示的总页数
        pageBean.setTotalPage((int) Math.ceil((double) productCount/count));
        //查找每页的商品集合
        List<Product> products = productDao.findAllProductBytid(tid,(currentPage - 1) * count, count);
        pageBean.setList(products);
        return pageBean;
    }

    //通过pid查找商品
    @Override
    public Product findByID(String pid) {
        return productDao.findByid(pid);
    }

    @Override
    public List<Product> findAllProduct() throws SQLException {
        return productDao.findAllProduct();
    }

    @Override
    public int deleteProduct(String id) throws SQLException {
        return productDao.deleteProduct(id);
    }


    @Override
    public int updateProduct(Product product) throws SQLException {
        return productDao.updateProduct(product);
    }
}
