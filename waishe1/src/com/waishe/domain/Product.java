package com.waishe.domain;

import java.io.Serializable;
import java.util.Date;

public class Product implements Serializable {
    private String pid;
    private String pname;
    private Integer t_id;
    private String t_name;
    private Double old_price;
    private Double new_price;
    private Integer pnumber;//商品库存
    private String pinfo;//商品详细描述
    private Date pdate;//上架日期
    private String psize;//商品规格
    private Integer is_hot;//1表示热门 0 表示否
    private Integer pflag;//是否下架 1表示下架
    private String img_t1;//展示头图片 800*800
    private String img_t2;
    private String img_t3;
    private String img_t4;
    private Double discount;//优惠折扣
    private Integer recommend;//是否推荐
    private String recommendInfo;//推荐语
    private Date recomm_date3;//限时特惠日期
    private String img_recommed;//推荐图片
    private String brand;
    private String info1;
    private String info2;

    public Product() {
    }

    public String getInfo1() {
        return info1;
    }

    public void setInfo1(String info1) {
        this.info1 = info1;
    }

    public String getInfo2() {
        return info2;
    }

    public void setInfo2(String info2) {
        this.info2 = info2;
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

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
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

    public Date getRecomm_date3() {
        return recomm_date3;
    }

    public void setRecomm_date3(Date recomm_date3) {
        this.recomm_date3 = recomm_date3;
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
