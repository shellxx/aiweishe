package com.waishe.controller;

import com.alibaba.fastjson.JSONObject;
import com.waishe.domain.Product;
import com.waishe.domain.User;
import com.waishe.service.Impl.UserServiceImpl;
import com.waishe.service.UserService;
import com.waishe.utils.UUIDUtils;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

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
    //注销
    public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath()+"/");

    }
    //用户的心愿单
    public void wishlist(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //获取user
        User user = (User) request.getSession().getAttribute("user");
        //
        if(user == null){
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }
        //查询该用户的心愿单
        UserService userService = new UserServiceImpl();
        List<Product> wishList = userService.findWishlist(user.getUid());
        //设置wishlist
        request.getSession().setAttribute("wishlists",wishList);
        response.sendRedirect(request.getContextPath()+"/wishlist.jsp");

    }
    //添加心愿单
    public void addWishlist(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //获取user
        User user = (User) request.getSession().getAttribute("user");
        String pid = request.getParameter("pid");

        JSONObject jsonObject = new JSONObject();
        if(user!=null){
            UserService userService = new UserServiceImpl();
            Product product = userService.findWishlistByone(user.getUid(), pid);
            if(product==null){
                userService.addWishlist(user.getUid(),pid);
                jsonObject.put("success", 1);
            }else {
                jsonObject.put("success", 2);
            }
            //查询该用户的心愿单
            List<Product> wishList = userService.findWishlist(user.getUid());
            //设置wishlist
            request.getSession().setAttribute("wishlists",wishList);
        }else {
            jsonObject.put("success",0);
        }




        response.getWriter().write(jsonObject.toJSONString());

    }
    public void deleteWishlist(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //获取user
        User user = (User) request.getSession().getAttribute("user");
        String pid = request.getParameter("pid");

        //调用删除的逻辑
        UserService userService = new UserServiceImpl();
        int i = userService.deleteWishlist(user.getUid(), pid);

        //查询该用户的心愿单
        List<Product> wishList = userService.findWishlist(user.getUid());
        //设置wishlist
        request.getSession().setAttribute("wishlists",wishList);

        response.sendRedirect(request.getContextPath()+"/wishlist.jsp");
    }

}
