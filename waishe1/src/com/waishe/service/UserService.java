package com.waishe.service;

import com.waishe.domain.User;

public interface UserService {
    /**
     * 用户注册
     * @param user
     * @return
     */
    int register(User user);

    /**
     * 用户登陆
     * @param username
     * @param password
     * @return
     */
    User login(String username, String password);
}
