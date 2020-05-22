package com.waishe.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RootServlet",urlPatterns = {"/rooter"})
public class RootServlet extends HttpServlet {
    /**
     * 管理员登陆
     * @param request
     * @param response
     */
    public void login(HttpServletRequest request, HttpServletResponse response){

    }
}
