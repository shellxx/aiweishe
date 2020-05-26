package com.waishe.dao;

import com.waishe.domain.Admin;

import java.util.List;

public interface AdminDao {
    //通过用户名密码查找
    Admin findByUsernameAndPwd(String username, String password);
    /**
     * 添加客服
     * @param customer
     */
    int insertCustomer(Admin customer);
    /**
     * 根据id删除客服
     * @param id
     * @return
     */
    int deleteCustomer(Integer id);
    /**
     * 修改客服
     * @param customer
     * @return
     */
    int updateCustomer(Admin customer);
    /**
     * 查找所有客服
     */
    List<Admin> findAllCustomer();
}
