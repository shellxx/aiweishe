package com.waishe.domain;

import java.io.Serializable;

public class Pimg implements Serializable {
    private String ping_id;
    private String pid;
    private String img_t1;
    private String img_t2;
    private String img_t3;
    private String img_t4;

    public Pimg() {
    }

    public String getPing_id() {
        return ping_id;
    }

    public void setPing_id(String ping_id) {
        this.ping_id = ping_id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getImg_t1() {
        return img_t1;
    }

    public void setImg_t1(String img_t1) {
        this.img_t1 = img_t1;
    }

    public String getImg_t2() {
        return img_t2;
    }

    public void setImg_t2(String img_t2) {
        this.img_t2 = img_t2;
    }

    public String getImg_t3() {
        return img_t3;
    }

    public void setImg_t3(String img_t3) {
        this.img_t3 = img_t3;
    }

    public String getImg_t4() {
        return img_t4;
    }

    public void setImg_t4(String img_t4) {
        this.img_t4 = img_t4;
    }

    @Override
    public String toString() {
        return "Pimg{" +
                "ping_id='" + ping_id + '\'' +
                ", pid='" + pid + '\'' +
                ", img_t1='" + img_t1 + '\'' +
                ", img_t2='" + img_t2 + '\'' +
                ", img_t3='" + img_t3 + '\'' +
                ", img_t4='" + img_t4 + '\'' +
                '}';
    }
}
