package com.waishe.service;

import com.waishe.domain.Product;
import com.waishe.domain.User;

import java.util.List;

public interface UserService {
    //用户注册
    int register(User user);
    //用户登陆
    User login(String username, String password);
    //查找当前用户的心愿单
    List<Product> findWishlist(String uid);
    //添加心愿单
    int addWishlist(String uid,String pid);
    //删除心愿单
    int deleteWishlist(String uid,String pid);
    //查询心愿单
    Product findWishlistByone(String uid,String pid);

    //客服操作
    //查找所有的用户
    List<User> findAllUser();

}
