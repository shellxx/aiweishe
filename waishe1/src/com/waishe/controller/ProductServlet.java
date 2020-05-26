package com.waishe.controller;

import com.alibaba.fastjson.JSONObject;
import com.waishe.domain.PageBean;
import com.waishe.domain.Product;
import com.waishe.domain.Type;
import com.waishe.service.Impl.ProductServiceImpl;
import com.waishe.service.Impl.TypeServiceImpl;
import com.waishe.service.ProductService;
import com.waishe.service.TypeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet",urlPatterns = {"/product/*"})
public class ProductServlet extends BaseServlet {
    //首页
    public void findToIndex(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //调用业务逻辑查找
        ProductService productService = new ProductServiceImpl();
        List<Product> newProduct = productService.findNewProduct();
        List<Product> hotProduct = productService.findHotProduct();
        List<Product> discountProduct = productService.findDiscountProduct();
        List<Product> recommedProduct = productService.findRecommedProduct();

        request.setAttribute("newProduct",newProduct);
        request.setAttribute("hotProduct",hotProduct);
        request.setAttribute("discountProduct",discountProduct);
        request.setAttribute("recommedProduct",recommedProduct);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
    //查看所有商品页
    public void findAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取当前页
        String currentPage = request.getParameter("currentPage");
        if(currentPage == null){
            currentPage = "1";
        }
        //定义每页显示的商品数量
        int count = 6;

        //调用业务逻辑
        ProductService productService = new ProductServiceImpl();
        PageBean<Product> allProduct = productService.findAllProduct(count, Integer.parseInt(currentPage));
        //设置请求域的属性
        request.setAttribute("products",allProduct);
        request.getRequestDispatcher("/shop.jsp").forward(request,response);

    }
    //查看某个商品类型的所有商品页
    public void findAllProductBytid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取当前页
        String tid = request.getParameter("tid");
        //如果为空的话，给个默认值....
        if(tid == null){
            tid = "1001";
        }
        String currentPage = request.getParameter("currentPage");
        if(currentPage == null){
            currentPage = "1";
        }
        //定义每页显示的商品数量
        int count = 6;

        //调用业务逻辑
        ProductService productService = new ProductServiceImpl();
        PageBean<Product> allProduct = productService.findAllProductBytid(Integer.parseInt(tid),count, Integer.parseInt(currentPage));
        //设置请求域的属性
        request.setAttribute("products",allProduct);
        request.setAttribute("findType",tid);
        request.getRequestDispatcher("/shop.jsp").forward(request,response);

    }
    //通过id查找某个商品
    public void findProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取商品的pid
        String pid = request.getParameter("pid");
        //查找此pid的商品
        ProductService productService = new ProductServiceImpl();
        Product product = productService.findByID(pid);
        //底部热门
        List<Product> hotProduct = productService.findHotProduct();
        request.setAttribute("hotProduct",hotProduct);

        request.setAttribute("product",product);
        request.getRequestDispatcher("/productInfo.jsp").forward(request,response);
    }



    //客服操作
    //客服查看所有商品
    public void findAllProductForAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取当前页
        String currentPage = request.getParameter("currentPage");
        if(currentPage == null){
            currentPage = "1";
        }
        //定义每页显示的商品数量
        int count = 6;

        //调用业务逻辑
        ProductService productService = new ProductServiceImpl();
        PageBean<Product> allProduct = productService.findAllProduct(count, Integer.parseInt(currentPage));
        //设置请求域的属性
        request.setAttribute("products",allProduct);
        request.getRequestDispatcher("/admin/productManager.jsp").forward(request,response);

    }
    //查找所有类别
    public void findAllType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TypeService typeService = new TypeServiceImpl();
        List<Type> types = typeService.findAll();

        request.setAttribute("types",types);
        request.getRequestDispatcher("/admin/typeManager.jsp").forward(request,response);

    }
}
