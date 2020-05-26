package com.waishe.dao;

import com.waishe.domain.Order_item;
import com.waishe.domain.Orders;
import com.waishe.domain.vo.OrderItemVo;

import java.sql.SQLException;
import java.util.List;

public interface OrderDao {
    /**
     * 保存订单
     * @param orders
     * @throws Exception
     */
    void saveOrders(Orders orders);

    /**
     * 保存订单项
     * @param orderItem
     * @throws Exception
     */
    void saveOrderItem(Order_item orderItem);

    /**
     * 通过id获取订单
     * @param oid
     * @return
     * @throws Exception
     */
    Orders findByOid(String oid);

    /**
     * 获取某一个订单下所有的订单项
     * @param oid
     * @return
     */
    List<Order_item> findOrderItemsByOid(String oid);

    OrderItemVo findOrderItemVoByPid(String pid);

    /**
     * 更新订单
     * @param orders
     * @throws SQLException
     */
    void update(Orders orders);


    /**
     * 删除某个订单
     */
    int deleteOrder(String id) throws SQLException;

    /**
     * 查找所有订单
     */
    List<Orders> findAllOrder() throws SQLException;
}
