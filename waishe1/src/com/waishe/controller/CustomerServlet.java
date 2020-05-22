package com.waishe.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomerServlet",urlPatterns = {"/customer/*"})
public class CustomerServlet extends HttpServlet {
    /**
     * 客服登陆
     * @param request
     * @param response
     */
    public void login(HttpServletRequest request, HttpServletResponse response){

    }
}
