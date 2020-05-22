package com.waishe.dao;


import com.waishe.domain.Root;

public interface RootDao {
    Root findRootByUsernameAndPassword(String account,String passw);
}
