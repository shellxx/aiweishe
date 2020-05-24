package com.waishe.service.Impl;

import com.waishe.dao.Impl.UserDaoImpl;
import com.waishe.dao.UserDao;
import com.waishe.domain.Product;
import com.waishe.domain.User;
import com.waishe.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {
    private UserDao userDao = new UserDaoImpl();
    @Override
    public int register(User user) {
        return userDao.insertUser(user);
    }

    @Override
    public User login(String username, String password) {
        return userDao.findUserByUsernameAndPassword(username,password);
    }
    //查找当前用户的心愿单
    @Override
    public List<Product> findWishlist(String uid) {
        return userDao.findWishlist(uid);
    }

    @Override
    public int addWishlist(String uid, String pid) {
        return userDao.addWishlist(uid, pid);
    }

    @Override
    public int deleteWishlist(String uid, String pid) {
        return userDao.deleteWishlist(uid, pid);
    }

    @Override
    public Product findWishlistByone(String uid, String pid) {
        return userDao.findWishlistByone(uid, pid);
    }
}
