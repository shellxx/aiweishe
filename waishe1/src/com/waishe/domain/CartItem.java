package com.waishe.domain;

/**
 * 购物项
 */
public class CartItem {

	private Product product;//商品信息
	private int buyNum;//该商品的购买数量
	private double subtotal;//该商品的小计
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getBuyNum() {
		return buyNum;
	}
	public void setBuyNum(int buyNum) {
		this.buyNum = buyNum;
	}
	public double getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}
	
	
	
}
