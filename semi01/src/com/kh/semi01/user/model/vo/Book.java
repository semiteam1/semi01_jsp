package com.kh.semi01.user.model.vo;

public class Book {
	
	private int bookedNo;		// 예매번호
	private String user;		// 회원 => 조회 시 회원명 | 입력 시 회원번호
	private String product;		// 상품 => 조회 시 상품명 | 입력 시 상품번호
	private String bookedDate;	// 예매날짜 => 입출력을 자유롭게 하기 위해서 String으로
	private String screenDate;	// 관람날짜 => 입출력을 자유롭게 하기 위해서 String으로
	private String titleImg;	// 포스터 이미지 조회용
	private String address;		// 공연 장소
	private String status;		// 삭제 여부
	
	// 기본 생성자
	public Book() {}

	// 전체 매개변수 생성자
	public Book(int bookedNo, String user, String product, String bookedDate, String screenDate, String titleImg,
			String address, String status) {
		super();
		this.bookedNo = bookedNo;
		this.user = user;
		this.product = product;
		this.bookedDate = bookedDate;
		this.screenDate = screenDate;
		this.titleImg = titleImg;
		this.address = address;
		this.status = status;
	}
	
	// 회원 예매내역 조회용 매개변수 생성자
	public Book(int bookedNo, String product, String screenDate, String titleImg, String address) {
		super();
		this.bookedNo = bookedNo;
		this.product = product;
		this.screenDate = screenDate;
		this.titleImg = titleImg;
		this.address = address;
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

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	// toString() 메소드
	@Override
	public String toString() {
		return "Book [bookedNo=" + bookedNo + ", user=" + user + ", product=" + product + ", bookedDate=" + bookedDate
				+ ", screenDate=" + screenDate + ", titleImg=" + titleImg + ", address=" + address + ", status="
				+ status + "]";
	}
	
}
