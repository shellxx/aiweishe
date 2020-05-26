package com.waishe.controller;

import com.alibaba.fastjson.JSONObject;
import com.waishe.domain.Admin;
import com.waishe.domain.User;
import com.waishe.service.AdminService;
import com.waishe.service.Impl.AdminServiceImpl;
import com.waishe.service.Impl.UserServiceImpl;
import com.waishe.service.UserService;
import org.apache.commons.dbutils.ResultSetHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet",urlPatterns = {"/admins/*"})
public class AdminServlet extends BaseServlet {
    //客服登陆
    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取参数
        String user_name = request.getParameter("user_name");
        String password = request.getParameter("password");

        AdminService adminService = new AdminServiceImpl();
        Admin admin = adminService.login(user_name, password);
        System.out.println(admin);

        if (admin == null) {
            request.setAttribute("msg","用户名或密码有误！");
            response.sendRedirect(request.getContextPath()+"/admin/login.jsp");
        }else {
            request.setAttribute("msg","登陆成功");
            response.sendRedirect(request.getContextPath()+"/admin/index.jsp");
        }

    }

    //客服操作
    //查找所有的用户
    public void findAllUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService userService = new UserServiceImpl();
        List<User> users = userService.findAllUser();
        request.setAttribute("users",users);
        request.getRequestDispatcher("/admin/userInfoManager.jsp").forward(request,response);


    }


}
