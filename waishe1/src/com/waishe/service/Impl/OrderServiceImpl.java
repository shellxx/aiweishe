package com.waishe.service.Impl;

import com.waishe.dao.Impl.OrderDaoImpl;
import com.waishe.dao.OrderDao;
import com.waishe.domain.Order_item;
import com.waishe.domain.Orders;
import com.waishe.domain.vo.OrderItemVo;
import com.waishe.service.OrderService;
import com.waishe.utils.C3p0Utils;

import java.sql.SQLException;
import java.util.List;

public class OrderServiceImpl implements OrderService {
    private OrderDao orderDao = new OrderDaoImpl();

    @Override
    public void saveOrdersAndOrderItem(Orders orders, List<Order_item> orderItems) {
        //开启事务
        try {
            C3p0Utils.startTransaction();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //执行保存的操作
        try {
            orderDao.saveOrders(orders);
            for (Order_item orderItem : orderItems){
                orderDao.saveOrderItem(orderItem);
            }
            //提交事务
            C3p0Utils.commitAndRelease();
        } catch (Exception e) {
            e.printStackTrace();
            //回滚事务
            try {
                C3p0Utils.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    @Override
    public Orders findByOid(String oid) {
        return orderDao.findByOid(oid);
    }

    @Override
    public List<Order_item> findOrderItemsByOid(String oid) {
        return orderDao.findOrderItemsByOid(oid);
    }

    @Override
    public OrderItemVo findOrderItemVoByPid(String pid) {
        return orderDao.findOrderItemVoByPid(pid);
    }

    @Override
    public void update(Orders orders) {
        orderDao.update(orders);
    }
}
