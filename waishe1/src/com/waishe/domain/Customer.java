package com.waishe.domain;

import java.io.Serializable;

public class Customer implements Serializable {
    private Integer cus_id;
    private String cus_account;
    private String cus_passw;

    public Customer() {
    }

    public Integer getCus_id() {
        return cus_id;
    }

    public void setCus_id(Integer cus_id) {
        this.cus_id = cus_id;
    }

    public String getCus_account() {
        return cus_account;
    }

    public void setCus_account(String cus_account) {
        this.cus_account = cus_account;
    }

    public String getCus_passw() {
        return cus_passw;
    }

    public void setCus_passw(String cus_passw) {
        this.cus_passw = cus_passw;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "cus_id=" + cus_id +
                ", cus_account='" + cus_account + '\'' +
                ", cus_passw='" + cus_passw + '\'' +
                '}';
    }
}
