package com.kh.semi01.product.model.vo;

public class ProductLike {
	
	private int product_no;
	private int user_no;
	
	public ProductLike() {}

	public ProductLike(int product_no, int user_no) {
		super();
		this.product_no = product_no;
		this.user_no = user_no;
	}

	public int getProduct_no() {
		return product_no;
	}

	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	@Override
	public String toString() {
		return "ProductLike [product_no=" + product_no + ", user_no=" + user_no + "]";
	}
	
	

}
