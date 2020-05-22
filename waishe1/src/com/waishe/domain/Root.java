package com.waishe.domain;

import java.io.Serializable;

public class Root implements Serializable {
    private Integer root_id;
    private String root_account;
    private String root_passw;

    public Root() {
    }

    public Integer getRoot_id() {
        return root_id;
    }

    public void setRoot_id(Integer root_id) {
        this.root_id = root_id;
    }

    public String getRoot_account() {
        return root_account;
    }

    public void setRoot_account(String root_account) {
        this.root_account = root_account;
    }

    public String getRoot_passw() {
        return root_passw;
    }

    public void setRoot_passw(String root_passw) {
        this.root_passw = root_passw;
    }

    @Override
    public String toString() {
        return "Root{" +
                "root_id=" + root_id +
                ", root_account='" + root_account + '\'' +
                ", root_passw='" + root_passw + '\'' +
                '}';
    }
}
