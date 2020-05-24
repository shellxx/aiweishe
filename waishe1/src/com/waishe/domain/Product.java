package com.waishe.domain;

import java.io.Serializable;
import java.util.Date;

public class Product implements Serializable {
    private String pid;
    private String pname;
    private Integer t_id;
    private Double old_price;
    private Double new_price;
    private Integer pnumber;//商品库存
    private String pinfo;//商品详细描述
    private Date pdate;//上架日期
    private String psize;//商品规格
    private Integer is_hot;//1表示热门 0 表示否
    private Integer pflag;//是否下架 1表示下架
    private String img_t1;//展示头图片 800*800
    private Double discount;//优惠折扣
    private Integer recommend;//是否推荐
    private String recommendInfo;//推荐语
    private String img_recommed;//推荐图片
    private String brand;

    public Product() {
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public Integer getT_id() {
        return t_id;
    }

    public void setT_id(Integer t_id) {
        this.t_id = t_id;
    }

    public Double getOld_price() {
        return old_price;
    }

    public void setOld_price(Double old_price) {
        this.old_price = old_price;
    }

    public Double getNew_price() {
        return new_price;
    }

    public void setNew_price(Double new_price) {
        this.new_price = new_price;
    }

    public Integer getPnumber() {
        return pnumber;
    }

    public void setPnumber(Integer pnumber) {
        this.pnumber = pnumber;
    }

    public String getPinfo() {
        return pinfo;
    }

    public void setPinfo(String pinfo) {
        this.pinfo = pinfo;
    }

    public String getImg_t1() {
        return img_t1;
    }

    public void setImg_t1(String img_t1) {
        this.img_t1 = img_t1;
    }

    public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }

    public String getPsize() {
        return psize;
    }

    public void setPsize(String psize) {
        this.psize = psize;
    }

    public Integer getIs_hot() {
        return is_hot;
    }

    public void setIs_hot(Integer is_hot) {
        this.is_hot = is_hot;
    }

    public Integer getPflag() {
        return pflag;
    }

    public void setPflag(Integer pflag) {
        this.pflag = pflag;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public Integer getRecommend() {
        return recommend;
    }

    public void setRecommend(Integer recommend) {
        this.recommend = recommend;
    }

    public String getRecommendInfo() {
        return recommendInfo;
    }

    public void setRecommendInfo(String recommendInfo) {
        this.recommendInfo = recommendInfo;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getImg_recommed() {
        return img_recommed;
    }

    public void setImg_recommed(String img_recommed) {
        this.img_recommed = img_recommed;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid='" + pid + '\'' +
                ", pname='" + pname + '\'' +
                ", t_id=" + t_id +
                ", old_price=" + old_price +
                ", new_price=" + new_price +
                ", pnumber=" + pnumber +
                ", pinfo='" + pinfo + '\'' +
                ", pdate=" + pdate +
                ", psize='" + psize + '\'' +
                ", is_hot=" + is_hot +
                ", pflag=" + pflag +
                '}';
    }
}
