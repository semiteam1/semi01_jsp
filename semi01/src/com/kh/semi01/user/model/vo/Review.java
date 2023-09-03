package com.kh.semi01.user.model.vo;

public class Review {
	
	private int reviewNo; 			// 리뷰번호
	private String titleImg;		// 포스터 이미지 조회용
	private String bookedProduct; 	// 관람한 상품 => 조회시 상품명 | 입력시 예매번호
	private String reviewContent; 	// 리뷰내용
	private String user; 			// 작성자 => 조회시 회원명 | 입력시 회원번호
	private String reviewDate; 		// 리뷰작성날짜 => 입출력을 자유롭게 하기 위해서 String으로
	private String status; 			// 삭제 여부
	
	// 기본 생성자
	public Review() {}

	// 전체 매개변수 생성자
	public Review(int reviewNo, String titleImg, String bookedProduct, String reviewContent, String user, String reviewDate,
			String status) {
		super();
		this.reviewNo = reviewNo;
		this.titleImg = titleImg;
		this.bookedProduct = bookedProduct;
		this.reviewContent = reviewContent;
		this.user = user;
		this.reviewDate = reviewDate;
		this.status = status;
	}
	
	// 리뷰 등록용 생성자
	public Review(String bookedProduct, String reviewContent, String user) {
		super();
		this.bookedProduct = bookedProduct;
		this.reviewContent = reviewContent;
		this.user = user;
	}

	// getter-setter 메소드
	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	public String getBookedProduct() {
		return bookedProduct;
	}

	public void setBookedProduct(String bookedProduct) {
		this.bookedProduct = bookedProduct;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
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
		return "Review [reviewNo=" + reviewNo + ", titleImg=" + titleImg + ", bookedProduct=" + bookedProduct + ", reviewContent="
				+ reviewContent + ", user=" + user + ", reviewDate=" + reviewDate + ", status=" + status + "]";
	}

}
