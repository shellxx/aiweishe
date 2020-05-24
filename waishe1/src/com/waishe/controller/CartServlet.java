package com.waishe.controller;

import com.alibaba.fastjson.JSONObject;
import com.waishe.domain.Cart;
import com.waishe.domain.CartItem;
import com.waishe.domain.Product;
import com.waishe.service.Impl.ProductServiceImpl;
import com.waishe.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "CartServlet",urlPatterns = {"/carts/*"})
public class CartServlet extends BaseServlet {
    //添加到购物车
    public void addToCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //获取加入购物车的商品id
        String pid = request.getParameter("pid");
        //获取加入购物车该商品的数量
        String buyNum = request.getParameter("buyNum");
        //通过pid查找商品
        ProductService productService = new ProductServiceImpl();
        Product product = productService.findByID(pid);

        //创建购物车项
        CartItem cartItem = new CartItem();
        //设置子项
        cartItem.setProduct(product);
        cartItem.setBuyNum(Integer.parseInt(buyNum));
        cartItem.setSubtotal(product.getNew_price()*Integer.parseInt(buyNum));//小计

        //获取session中的购物车
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        //如果cart为空，说明第一次创建购物车
        if (cart == null) {
            //创建cart对象
            cart = new Cart();
            //存入订单项
            HashMap<String, CartItem> cartMap = new HashMap<>();
            cartMap.put(pid,cartItem);
            cart.setCartItems(cartMap);
            //设置购物车总金额
            cart.setTotal(cartItem.getSubtotal());
        }else {
            //判断当前商品在购物车中是否存在
            if (cart.getCartItems().containsKey(pid)) {
                CartItem cartItem1 = cart.getCartItems().get(pid);
                cartItem1.setBuyNum(cartItem1.getBuyNum()+cartItem.getBuyNum());
            }else {
                cart.getCartItems().put(pid,cartItem);
            }
            cart.setTotal(cart.getTotal()+cartItem.getSubtotal());
        }
        //存入session
        request.getSession().setAttribute("cart",cart);
        //返回json
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", true);
        response.getWriter().write(jsonObject.toJSONString());
    }
    //删除购物车单项商品
    public void deleteCartItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取删除的pid
        String pid = request.getParameter("pid");
        //获取购物车对象
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        Map<String, CartItem> cartItems = cart.getCartItems();

        //如果购物车存在并且购物车存在该商品
        if (cart != null && cartItems.containsKey(pid)) {
            //获取总金额
            double total = cart.getTotal();
            //移除此项，并获取该对象
            CartItem cartItem = cartItems.remove(pid);
            //利用此项获取此商品总额
            double subtotal = cartItem.getSubtotal();
            //重新设置购物车总额
            cart.setTotal(total-subtotal);
            //设置cart
            request.setAttribute("cart",cart);
        }

//        request.getRequestDispatcher("/cart.jsp").forward(request,response);
        response.sendRedirect(request.getContextPath()+"/cart.jsp");
    }
//清空购物车
    public void clearCar(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.getSession().removeAttribute("cart");
        response.sendRedirect(request.getContextPath()+"/cart.jsp");
    }
}
