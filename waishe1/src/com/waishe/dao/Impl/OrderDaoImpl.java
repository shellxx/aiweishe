package com.waishe.dao.Impl;

import com.waishe.dao.OrderDao;
import com.waishe.domain.Order_item;
import com.waishe.domain.Orders;
import com.waishe.domain.vo.OrderItemVo;
import com.waishe.utils.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

public class OrderDaoImpl implements OrderDao {
    @Override
    public void saveOrders(Orders orders) {
        //创建QueryRunner
        QueryRunner qr = new QueryRunner();
        String sql = "insert into orders(order_id,commit_time,order_total,state,uid) values(?,?,?,?,?)";
        try {
            qr.update(C3p0Utils.getConnection(),sql,orders.getOrder_id(),orders.getCommit_time(),
                    orders.getOrder_total(),orders.getState(),orders.getUid());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void saveOrderItem(Order_item orderItem){
        //创建QueryRunner
        QueryRunner qr = new QueryRunner();
        String sql = "insert into order_item(account,subTotal,pid,order_id) values(?,?,?,?)";
        try {
            qr.update(C3p0Utils.getConnection(),sql,orderItem.getAccount(),orderItem.getSubTotal(),
                    orderItem.getPid(),orderItem.getOrder_id());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Orders findByOid(String oid){
        QueryRunner qr = new QueryRunner(C3p0Utils.getDataSource());
        try {
            return qr.query("select * from orders where order_id=?",new BeanHandler<Orders>(Orders.class),oid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Order_item> findOrderItemsByOid(String oid){
        QueryRunner qr = new QueryRunner(C3p0Utils.getDataSource());
        try {
            return qr.query("select * from order_item where order_id=?", new BeanListHandler<Order_item>(Order_item.class),oid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public OrderItemVo findOrderItemVoByPid(String pid){
        QueryRunner qr = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select * from product p,pimg img where p.pid = ? and p.pid=img.pid";
        try {
            return qr.query(sql,new BeanHandler<OrderItemVo>(OrderItemVo.class),pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void update(Orders orders){
        QueryRunner qr = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "insert into address(addressID,uid,address,name,telephone) values(?,?,?,?,?)";
        try {
            qr.update(sql,orders.getOrder_id(),orders.getUid(),orders.getAddress(),orders.getName(),orders.getTelephone());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
