package com.waishe.test;

import com.waishe.domain.User;
import com.waishe.service.Impl.UserServiceImpl;
import com.waishe.service.UserService;
import org.junit.Test;

public class JdbcTest {
    @Test
    public void TestLogin(){
        UserService userService = new UserServiceImpl();
        User login = userService.login("111", "111");
        System.out.println(login);
    }
}
