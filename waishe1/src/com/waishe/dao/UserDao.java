package com.waishe.dao;

import com.waishe.domain.User;

import java.util.List;

public interface UserDao {
    /**
     * 添加用户
     * @param user
     */
    int insertUser(User user);

    /**
     * 根据id删除用户
     * @param id
     * @return
     */
    int deleteUser(String id);

    /**
     * 修改用户
     * @param user
     * @return
     */
    int updateUser(User user);
    /**
     * 查找所有用户
     */
    List<User> findAllUser();

    /**
     * 通过用户名和密码查找用户
     * @param username
     * @param password
     * @return
     */
    User findUserByUsernameAndPassword(String username,String password);
}
