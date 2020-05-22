package com.waishe.dao;

import com.waishe.domain.User_vip;

import java.util.List;

public interface UserVipDao {
    /**
     * 添加会员
     * @param user_vip
     */
    int insertUser_vip(User_vip user_vip);

    /**
     * 根据id删除会员
     * @param id
     * @return
     */
    int deleteUser(String id);

    /**
     * 修改会员
     * @param user_vip
     * @return
     */
    int updateUser_vip(User_vip user_vip);
    /**
     * 查找所有会员
     */
    List<User_vip> findAllUser_vip();
}
