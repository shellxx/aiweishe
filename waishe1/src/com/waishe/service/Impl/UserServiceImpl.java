package com.waishe.service.Impl;

import com.waishe.dao.Impl.UserDaoImpl;
import com.waishe.dao.UserDao;
import com.waishe.domain.User;
import com.waishe.service.UserService;

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
}
