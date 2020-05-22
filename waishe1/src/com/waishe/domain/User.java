package com.waishe.domain;

import java.io.Serializable;

public class User implements Serializable {
    private String uid;
    private String u_username;
    private String u_password;
    private String u_email;
    private String u_phone;
    private String u_name;
    private String u_address;

    public User() {
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getU_username() {
        return u_username;
    }

    public void setU_username(String u_username) {
        this.u_username = u_username;
    }

    public String getU_password() {
        return u_password;
    }

    public void setU_password(String u_password) {
        this.u_password = u_password;
    }

    public String getU_email() {
        return u_email;
    }

    public void setU_email(String u_email) {
        this.u_email = u_email;
    }

    public String getU_phone() {
        return u_phone;
    }

    public void setU_phone(String u_phone) {
        this.u_phone = u_phone;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_address() {
        return u_address;
    }

    public void setU_address(String u_address) {
        this.u_address = u_address;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid='" + uid + '\'' +
                ", u_username='" + u_username + '\'' +
                ", u_password='" + u_password + '\'' +
                ", u_email='" + u_email + '\'' +
                ", u_phone='" + u_phone + '\'' +
                ", u_name='" + u_name + '\'' +
                ", u_address='" + u_address + '\'' +
                '}';
    }
}
