package com.waishe.constans;

/**
 * 封装系统的全局常量
 */
public interface Global {
    int PRODUCT_FLAG_ON = 0;//没下架
    int PRODUCT_FLAG_OFF = 1;//下架
    int PRODUCT_IS_HOT = 1;//热门
    int PRODUCT_IS_NOT_HOT = 0;//不热门
    String ORDER_STATE_WEIFUKUAN = "0";//未付款
    String ORDER_STATE_YIFUKUAN = "1";//已付款
    String ORDER_STATE_YIFAHUO = "2";//已发货
    String ORDER_STATE_YIWANCHENG = "3";//已完成
}
