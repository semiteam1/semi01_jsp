package com.kh.semi01.user.model.vo;

public class Book {
	
	private int bookedNo;		// 예매번호
	private String user;		// 회원 => 조회 시 회원명 | 입력 시 회원번호
	private String product;		// 상품 => 조회 시 상품명 | 입력 시 상품번호
	private String bookedDate;	// 예매날짜 => 입출력을 자유롭게 하기 위해서 String으로
	private String screenDate;	// 관람날짜 => 입출력을 자유롭게 하기 위해서 String으로
	
	// 기본 생성자
	public Book() {}

	// 전체 매개변수 생성자
	public Book(int bookedNo, String user, String product, String bookedDate, String screenDate) {
		super();
		this.bookedNo = bookedNo;
		this.user = user;
		this.product = product;
		this.bookedDate = bookedDate;
		this.screenDate = screenDate;
	}

	// getter-setter 메소드
	public int getBookedNo() {
		return bookedNo;
	}

	public void setBookedNo(int bookedNo) {
		this.bookedNo = bookedNo;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getBookedDate() {
		return bookedDate;
	}

	public void setBookedDate(String bookedDate) {
		this.bookedDate = bookedDate;
	}

	public String getScreenDate() {
		return screenDate;
	}

	public void setScreenDate(String screenDate) {
		this.screenDate = screenDate;
	}

	// toString() 메소드
	@Override
	public String toString() {
		return "Book [bookedNo=" + bookedNo + ", user=" + user + ", product=" + product + ", bookedDate=" + bookedDate
				+ ", screenDate=" + screenDate + "]";
	}
	
}
