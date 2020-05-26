package com.waishe.service;

import com.waishe.domain.Admin;

public interface AdminService {
    Admin login(String username,String password);
}
