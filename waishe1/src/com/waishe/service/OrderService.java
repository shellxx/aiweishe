package com.waishe.service;

import com.waishe.domain.Order_item;
import com.waishe.domain.Orders;
import com.waishe.domain.vo.OrderItemVo;

import java.util.List;

public interface OrderService {

    /**
     * 提交订单
     * @param orders
     * @param orderItems
     */
    void saveOrdersAndOrderItem(Orders orders, List<Order_item> orderItems);


    /**
     * 通过id查询订单
     * @param oid
     * @return
     */
    Orders findByOid(String oid);

    /**
     * 获取所有的订单项的方法
     * @param oid
     * @return
     */
    List<Order_item> findOrderItemsByOid(String oid);

    /**
     * 通过商品id获取vo
     * @param pid
     * @return
     */
    OrderItemVo findOrderItemVoByPid(String pid);

    /**
     * 更新订单
     * @param orders
     */
    void update(Orders orders);
}
