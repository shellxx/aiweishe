package com.waishe.domain;

import java.io.Serializable;

public class Cart implements Serializable {
    private Integer cart_id;
    private String pid;
    private Integer p_num;

    public Cart() {
    }

    public Integer getCart_id() {
        return cart_id;
    }

    public void setCart_id(Integer cart_id) {
        this.cart_id = cart_id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public Integer getP_num() {
        return p_num;
    }

    public void setP_num(Integer p_num) {
        this.p_num = p_num;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cart_id=" + cart_id +
                ", pid='" + pid + '\'' +
                ", p_num=" + p_num +
                '}';
    }
}
