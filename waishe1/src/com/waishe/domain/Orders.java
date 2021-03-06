package com.waishe.domain;

import com.waishe.domain.vo.OrderItemVo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Orders implements Serializable {
    private String order_id;
    private String uid;
    private Double order_total;
    private Double order_atotal;
    private Date commit_time;
    private Date finish_time;
    private String state;
    private Integer cus_id;
    private String address;
    private String name;
    private String telephone;
    //添加订单项
    private List<OrderItemVo> orderItemVos = new ArrayList<OrderItemVo>();

    public Orders() {
    }

    public List<OrderItemVo> getOrderItemVos() {
        return orderItemVos;
    }

    public void setOrderItemVos(List<OrderItemVo> orderItemVos) {
        this.orderItemVos = orderItemVos;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public Double getOrder_total() {
        return order_total;
    }

    public void setOrder_total(Double order_total) {
        this.order_total = order_total;
    }

    public Double getOrder_atotal() {
        return order_atotal;
    }

    public void setOrder_atotal(Double order_atotal) {
        this.order_atotal = order_atotal;
    }

    public Date getCommit_time() {
        return commit_time;
    }

    public void setCommit_time(Date commit_time) {
        this.commit_time = commit_time;
    }

    public Date getFinish_time() {
        return finish_time;
    }

    public void setFinish_time(Date finish_time) {
        this.finish_time = finish_time;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Integer getCus_id() {
        return cus_id;
    }

    public void setCus_id(Integer cus_id) {
        this.cus_id = cus_id;
    }

    @Override
    public String toString() {
        return "Order{" +
                "order_id='" + order_id + '\'' +
                ", uid='" + uid + '\'' +
                ", order_total=" + order_total +
                ", order_atotal=" + order_atotal +
                ", commit_time=" + commit_time +
                ", finish_time=" + finish_time +
                ", state='" + state + '\'' +
                ", cus_id=" + cus_id +
                '}';
    }
}
