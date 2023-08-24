package com.kh.semi01.review.model.vo;

public class Review {
	
	private int reviewNo; 			// 리뷰번호
	private String product; 		// 관람한 상품 => 조회시 상품명 | 입력시 상품번호
	private String reviewContent; 	// 리뷰내용
	private String user; 			// 작성자 => 조회시 회원명 | 입력시 회원번호
	private String reviewDate; 		// 리뷰작성날짜 => 입출력을 자유롭게 하기 위해서 String으로
	
	// 기본 생성자
	public Review() {}

	// 전체 매개변수 생성자
	public Review(int reviewNo, String product, String reviewContent, String user, String reviewDate) {
		super();
		this.reviewNo = reviewNo;
		this.product = product;
		this.reviewContent = reviewContent;
		this.user = user;
		this.reviewDate = reviewDate;
	}

	// getter-setter 메소드
	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
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

	// toString() 메소드
	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", product=" + product + ", reviewContent=" + reviewContent + ", user="
				+ user + ", reviewDate=" + reviewDate + "]";
	}

}
