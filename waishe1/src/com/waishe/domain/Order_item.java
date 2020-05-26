package com.waishe.domain;

import java.io.Serializable;

public class Order_item implements Serializable {
    private Integer oitem_id;
    private String order_id;
    private String pid;
    private Integer account;
    private Double subTotal;

    public Order_item() {
    }

    public Double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(Double subTotal) {
        this.subTotal = subTotal;
    }

    public Integer getOitem_id() {
        return oitem_id;
    }

    public void setOitem_id(Integer oitem_id) {
        this.oitem_id = oitem_id;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public Integer getAccount() {
        return account;
    }

    public void setAccount(Integer account) {
        this.account = account;
    }

    @Override
    public String toString() {
        return "Order_item{" +
                "oitem_id=" + oitem_id +
                ", order_id='" + order_id + '\'' +
                ", pid='" + pid + '\'' +
                ", account=" + account +
                '}';
    }
}
