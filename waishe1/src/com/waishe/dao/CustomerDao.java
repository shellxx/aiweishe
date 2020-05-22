package com.waishe.dao;

import com.waishe.domain.Customer;

import java.util.List;

public interface CustomerDao {
    /**
     * 添加客服
     * @param customer
     */
    int insertCustomer(Customer customer);
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
    int updateCustomer(Customer customer);
    /**
     * 查找所有客服
     */
    List<Customer> findAllCustomer();
}
