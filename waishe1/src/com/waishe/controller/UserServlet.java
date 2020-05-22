package com.waishe.controller;

import com.alibaba.fastjson.JSONObject;
import com.waishe.domain.User;
import com.waishe.service.Impl.UserServiceImpl;
import com.waishe.service.UserService;
import com.waishe.utils.UUIDUtils;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "UserServlet",urlPatterns = {"/user/*"})
public class UserServlet extends BaseServlet {
    /**
     * 用户注册
     * @param request
     * @param response
     */
    public void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //获取参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        //封装对象
        User user = new User();
        user.setU_username(username);
        user.setU_password(password);
        user.setU_email(email);
        //设置user id
        user.setUid(UUIDUtils.getUUID());
        //调用service
        UserService userService = new UserServiceImpl();
        userService.register(user);
        //响应json数据
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", true);
        response.getWriter().write(jsonObject.toJSONString());


    }

    /**
     * 用户登陆
     * @param request
     * @param response
     */
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //获取参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //调用service
        UserService userService = new UserServiceImpl();
        User user = userService.login(username, password);
        //判断user是否为空
        if (user != null) {
            //将user存入session
            request.getSession().setAttribute("user", user);
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("success", true);
            response.getWriter().write(jsonObject.toString());
        }else {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("success", false);
            response.getWriter().write(jsonObject.toString());
        }
    }
}
