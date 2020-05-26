package com.waishe.controller;

import com.waishe.constans.Global;
import com.waishe.domain.*;
import com.waishe.domain.vo.OrderItemVo;
import com.waishe.service.Impl.OrderServiceImpl;
import com.waishe.service.OrderService;
import com.waishe.utils.UUIDUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@WebServlet(name = "OrderServlet",urlPatterns = {"/order/*"})
public class OrderServlet extends BaseServlet {
    //提交订单
    public void generate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //首先判断是否登录
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            //还没登录，跳转到登录页面
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }
        //封装Orders
        Orders orders = new Orders();
        orders.setOrder_id(UUIDUtils.getUUID());
        orders.setCommit_time(new Date());
        orders.setState(Global.ORDER_STATE_WEIFUKUAN);
        orders.setUid(user.getUid());
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        orders.setOrder_total(cart.getTotal());

        List<Order_item> orderItems = new ArrayList<Order_item>();
        //有内容
        for (Map.Entry<String, CartItem> entry : cart.getCartItems().entrySet()) {
            Order_item orderItem = new Order_item();
            orderItem.setAccount(entry.getValue().getBuyNum());
            orderItem.setOrder_id(orders.getOrder_id());
            orderItem.setPid(entry.getKey());
            orderItem.setSubTotal(entry.getValue().getSubtotal());
            orderItems.add(orderItem);
        }

        //调用也业务逻辑
        OrderService orderService = new OrderServiceImpl();
        orderService.saveOrdersAndOrderItem(orders, orderItems);

        //订单提交成功，将购物车清空
        clearCart(request);

        //下面要跳转，到订单详情页，订单详情页显示当前订单的信息
        //需要调到一个servlet中，传参数，method，oid
        response.sendRedirect(request.getContextPath()+"/order/findByOid?oid="+orders.getOrder_id());
    }

    //通过oid获取订单对象
    public void findByOid(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String oid = request.getParameter("oid");
        System.out.println(oid);
        //查询订单
        OrderService orderService = new OrderServiceImpl();
        Orders orders = orderService.findByOid(oid);
        //封装OrderItemVos
        List<OrderItemVo> orderItemVos = new ArrayList<OrderItemVo>();
        //查询该订单下所有的订单项
        List<Order_item>  orderItems = orderService.findOrderItemsByOid(oid);

        for(Order_item orderItem:orderItems){
            //vo中有商品图片，商品名称，商品价格
            OrderItemVo orderItemVo = orderService.findOrderItemVoByPid(orderItem.getPid());
            //购买数量，小计
            orderItemVo.setBuyNum(orderItem.getAccount());
            orderItemVo.setSubTotal(orderItem.getSubTotal());
            //vo存入list
            orderItemVos.add(orderItemVo);
        }
        //设置到orders中
        orders.setOrderItemVos(orderItemVos);
        //订单信息存入session
        request.getSession().setAttribute("orders",orders);
        //跳转订单详情页
        response.sendRedirect(request.getContextPath()+"/checkout.jsp");
    }
    //更新订单
    public void update(HttpServletRequest request,HttpServletResponse response) throws IOException {
        //获取参数
        String address = request.getParameter("billing_streetAddress");
        String name = request.getParameter("billing_fname");
        String telephone = request.getParameter("billing_phone");
        //获取orders
        Orders orders = (Orders) request.getSession().getAttribute("orders");
        orders.setAddress(address);
        orders.setName(name);
        orders.setTelephone(telephone);
        //调用业务逻辑
        OrderService orderService = new OrderServiceImpl();
        orderService.update(orders);
        //下一步就可以跳转到支付页面
        //支付成功以后从session中移除
        response.sendRedirect(request.getContextPath()+"/login.jsp");
    }
    public void clearCart(HttpServletRequest request){
        request.getSession().removeAttribute("cart");
    }
}
