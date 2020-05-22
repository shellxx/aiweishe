package com.waishe.domain;

import java.io.Serializable;
import java.util.Date;

public class User_vip implements Serializable {
    private String vip_id;
    private String uid;
    private Date opentime;
    private Integer timelength;

    public User_vip() {
    }

    public String getVip_id() {
        return vip_id;
    }

    public void setVip_id(String vip_id) {
        this.vip_id = vip_id;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public Date getOpentime() {
        return opentime;
    }

    public void setOpentime(Date opentime) {
        this.opentime = opentime;
    }

    public Integer getTimelength() {
        return timelength;
    }

    public void setTimelength(Integer timelength) {
        this.timelength = timelength;
    }

    @Override
    public String toString() {
        return "User_vip{" +
                "vip_id='" + vip_id + '\'' +
                ", uid='" + uid + '\'' +
                ", opentime=" + opentime +
                ", timelength=" + timelength +
                '}';
    }
}
