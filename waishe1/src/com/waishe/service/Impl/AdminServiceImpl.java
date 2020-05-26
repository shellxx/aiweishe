package com.waishe.service.Impl;

import com.waishe.dao.AdminDao;
import com.waishe.dao.Impl.AdminDaoImpl;
import com.waishe.domain.Admin;
import com.waishe.service.AdminService;

public class AdminServiceImpl implements AdminService {
    private AdminDao adminDao = new AdminDaoImpl();
    @Override
    public Admin login(String username, String password) {
        return adminDao.findByUsernameAndPwd(username,password);
    }
}
