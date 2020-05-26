package com.waishe.domain.vo;

public class OrderItemVo {
    private String img_t1;//商品图片
    private String pname;//商品名称
    private Double new_price;//商城价
    private Integer buyNum;//购买数量
    private Double subTotal;//小计

    public String getImg_t1() {
        return img_t1;
    }

    public void setImg_t1(String img_t1) {
        this.img_t1 = img_t1;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public Double getNew_price() {
        return new_price;
    }

    public void setNew_price(Double new_price) {
        this.new_price = new_price;
    }

    public Integer getBuyNum() {
        return buyNum;
    }

    public void setBuyNum(Integer buyNum) {
        this.buyNum = buyNum;
    }

    public Double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(Double subTotal) {
        this.subTotal = subTotal;
    }
}
