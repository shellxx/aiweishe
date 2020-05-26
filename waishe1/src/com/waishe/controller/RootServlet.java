package com.waishe.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.waishe.domain.*;
import com.waishe.service.*;
import com.waishe.service.Impl.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "RootServlet",urlPatterns = {"/rooter/*"})
public class RootServlet extends BaseServlet {
    UserService userService =new UserServiceImpl();
    TypeService typeService=new TypeServiceImpl();
    ProductService productService =new ProductServiceImpl();
    OrderService orderService =new OrderServiceImpl();
    /**
     * 管理员登陆
     * @param request
     * @param response
     */
    public void login(HttpServletRequest request, HttpServletResponse response){
    }
    public void selectAllUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList =null;
        try {
            userList = userService.findAllUser();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("userList",userList);
        request.getRequestDispatcher("/admin/userInfoManager.jsp").forward(request,response);
    }
    public void deleteByUId(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        try {
            userService.deleteUser(id);
            //fan hui1
            JSONObject jsonObject= new JSONObject();
            jsonObject.put("success",true);
            response.getWriter().write(jsonObject.toJSONString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jsonObject= new JSONObject();
        jsonObject.put("success",false);
        response.getWriter().write(jsonObject.toJSONString());
    }
    public void selectAllType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Type> userList =null;
        try {
            userList = typeService.findAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("userList",userList);
        request.getRequestDispatcher("/admin/typeManager.jsp").forward(request,response);
    }
    public void deleteByTId(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        try {
           typeService.deleteType(id);
            //fan hui1
            JSONObject jsonObject= new JSONObject();
            jsonObject.put("success",true);
            response.getWriter().write(jsonObject.toJSONString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jsonObject= new JSONObject();
        jsonObject.put("success",false);
        response.getWriter().write(jsonObject.toJSONString());
    }
    public void selectAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> userList =null;
        try {
            userList = productService.findAllProduct();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("userList",userList);
        request.getRequestDispatcher("/admin/productManager.jsp").forward(request,response);
    }
    public void deleteByPId(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        try {
            productService.deleteProduct(id);
            //fan hui1
            JSONObject jsonObject= new JSONObject();
            jsonObject.put("success",true);
            response.getWriter().write(jsonObject.toJSONString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jsonObject= new JSONObject();
        jsonObject.put("success",false);
        response.getWriter().write(jsonObject.toJSONString());
    }
    //订单
    public void selectAllOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Orders> userList =null;
        try {
            userList=orderService.findAllOrder();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("userList",userList);
        request.getRequestDispatcher("/admin/orderManager.jsp").forward(request,response);
    }
    public void deleteByOrderId(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        try {
           orderService.deleteOrder(id);
            JSONObject jsonObject= new JSONObject();
            jsonObject.put("success",true);
            response.getWriter().write(jsonObject.toJSONString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jsonObject= new JSONObject();
        jsonObject.put("success",false);
        response.getWriter().write(jsonObject.toJSONString());
    }
    public void selectUserById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        User user =null;
        try {
            user= userService.selectUserById(id);
            System.out.println(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (user!=null){
            JSONObject o = (JSONObject) JSON.toJSON(user);
            System.out.println(o);
            response.getWriter().write(o.toJSONString());
        }
    }
    public void selectProductById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        Product product =null;
        try {
            product= productService.findByID(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (product!=null){
            JSONObject o = (JSONObject) JSON.toJSON(product);
            System.out.println(o);
            response.getWriter().write(o.toJSONString());
        }
    }
    public void updateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Product product =new Product();
        product.setPid(id);
        product.setPname(username);
        product.setPsize(password);
        try {
            productService.updateProduct(product);
            System.out.println("更新");
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect(request.getContextPath()+"/rooter/selectAllProduct");
    }
    //修改的方法
    public void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String name = request.getParameter("name");
        String address=request.getParameter("address");
        User user=new User();
        user.setUid(id);
        user.setU_username(username);
        user.setU_name(name);
        user.setU_password(password);
        user.setU_email(email);
        user.setU_address(address);
        user.setU_phone(phone);
        try {
            userService.updateUser(user);
            System.out.println("更新");
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect(request.getContextPath()+"/rooter/selectAllUser");
    }
}
