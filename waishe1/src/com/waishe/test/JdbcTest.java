package com.waishe.test;

import com.waishe.domain.*;
import com.waishe.service.Impl.ProductServiceImpl;
import com.waishe.service.Impl.UserServiceImpl;
import com.waishe.service.ProductService;
import com.waishe.service.UserService;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class JdbcTest {
    @Test
    public void TestLogin(){
        UserService userService = new UserServiceImpl();
        User login = userService.login("111", "111");
        System.out.println(login);
    }
    @Test
    public void TestNewProduct(){
        ProductService productService = new ProductServiceImpl();
        List<Product> newProduct = productService.findNewProduct();
        System.out.println(newProduct);
    }
    @Test
    public void TestHOtProduct(){
        ProductService productService = new ProductServiceImpl();
        List<Product> hotProduct = productService.findHotProduct();
        System.out.println(hotProduct);
    }
    @Test
    public void TestProductPageBean(){
        ProductService productService = new ProductServiceImpl();
        PageBean<Product> allProduct = productService.findAllProduct(6, 1);
        System.out.println(allProduct);
        for (Product product : allProduct.getList()) {
            System.out.println(product);
        }
    }
    @Test
    public void TestProductPageBeanBytid(){
        ProductService productService = new ProductServiceImpl();
        PageBean<Product> allProduct = productService.findAllProductBytid(1001,6, 1);
        System.out.println(allProduct);
        for (Product product : allProduct.getList()) {
            System.out.println(product);
        }
    }
    @Test
    public void findProductByid(){
        ProductService productService = new ProductServiceImpl();
        Product byID = productService.findByID("1");
        System.out.println(byID);
    }
@Test
    public void cart(){
        ProductService productService = new ProductServiceImpl();
        CartItem cartItem = new CartItem();
        HashMap<String, CartItem> map = new HashMap<>();
        map.put("1",cartItem);
        map.put("2",cartItem);
        map.put("3", cartItem);
        map.put("4", cartItem);
        System.out.println(map.toString());
        //{1=com.waishe.domain.CartItem@1a93a7ca, 2=com.waishe.domain.CartItem@1a93a7ca, 3=com.waishe.domain.CartItem@1a93a7ca, 4=com.waishe.domain.CartItem@1a93a7ca}

    }
@Test
    public void testWishlist(){
        UserService userService = new UserServiceImpl();
        List<Product> wishlist = userService.findWishlist("6936fd0520184507876eb0c1418919f1");
        for (Product product : wishlist) {
            System.out.println(product);
        }
    }
}
