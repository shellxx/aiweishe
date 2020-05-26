package com.waishe.dao;

import com.waishe.domain.Product;
import com.waishe.domain.User;

import java.util.List;

public interface UserDao {


    //添加用户
    int insertUser(User user);

    //根据id删除用户
    int deleteUser(String id);

    //修改用户
    int updateUser(User user);


    // 通过用户名和密码查找用户
    User findUserByUsernameAndPassword(String username,String password);

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
