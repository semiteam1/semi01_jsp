package com.kh.semi01.product.model.vo;

public class Product_IMG {
	
	private int productNo;
	private String posterName;
	private String posterPath;
	private String detail1Name;
	private String detail1Path;
	private String detail2Name;
	private String detail2Path;
	private String detail3Name;
	private String detail3Path;
	private String detail4Name;
	private String detail4Path;
	private String detail5Name;
	private String detail5Path;
	
	public Product_IMG() {}

	public Product_IMG(int productNo, String posterName, String posterPath, String detail1Name, String detail1Path,
			String detail2Name, String detail2Path, String detail3Name, String detail3Path, String detail4Name,
			String detail4Path, String detail5Name, String detail5Path) {
		super();
		this.productNo = productNo;
		this.posterName = posterName;
		this.posterPath = posterPath;
		this.detail1Name = detail1Name;
		this.detail1Path = detail1Path;
		this.detail2Name = detail2Name;
		this.detail2Path = detail2Path;
		this.detail3Name = detail3Name;
		this.detail3Path = detail3Path;
		this.detail4Name = detail4Name;
		this.detail4Path = detail4Path;
		this.detail5Name = detail5Name;
		this.detail5Path = detail5Path;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getPosterName() {
		return posterName;
	}

	public void setPosterName(String posterName) {
		this.posterName = posterName;
	}

	public String getPosterPath() {
		return posterPath;
	}

	public void setPosterPath(String posterPath) {
		this.posterPath = posterPath;
	}

	public String getDetail1Name() {
		return detail1Name;
	}

	public void setDetail1Name(String detail1Name) {
		this.detail1Name = detail1Name;
	}

	public String getDetail1Path() {
		return detail1Path;
	}

	public void setDetail1Path(String detail1Path) {
		this.detail1Path = detail1Path;
	}

	public String getDetail2Name() {
		return detail2Name;
	}

	public void setDetail2Name(String detail2Name) {
		this.detail2Name = detail2Name;
	}

	public String getDetail2Path() {
		return detail2Path;
	}

	public void setDetail2Path(String detail2Path) {
		this.detail2Path = detail2Path;
	}

	public String getDetail3Name() {
		return detail3Name;
	}

	public void setDetail3Name(String detail3Name) {
		this.detail3Name = detail3Name;
	}

	public String getDetail3Path() {
		return detail3Path;
	}

	public void setDetail3Path(String detail3Path) {
		this.detail3Path = detail3Path;
	}

	public String getDetail4Name() {
		return detail4Name;
	}

	public void setDetail4Name(String detail4Name) {
		this.detail4Name = detail4Name;
	}

	public String getDetail4Path() {
		return detail4Path;
	}

	public void setDetail4Path(String detail4Path) {
		this.detail4Path = detail4Path;
	}

	public String getDetail5Name() {
		return detail5Name;
	}

	public void setDetail5Name(String detail5Name) {
		this.detail5Name = detail5Name;
	}

	public String getDetail5Path() {
		return detail5Path;
	}

	public void setDetail5Path(String detail5Path) {
		this.detail5Path = detail5Path;
	}

	@Override
	public String toString() {
		return "Product_IMG [productNo=" + productNo + ", posterName=" + posterName + ", posterPath=" + posterPath
				+ ", detail1Name=" + detail1Name + ", detail1Path=" + detail1Path + ", detail2Name=" + detail2Name
				+ ", detail2Path=" + detail2Path + ", detail3Name=" + detail3Name + ", detail3Path=" + detail3Path
				+ ", detail4Name=" + detail4Name + ", detail4Path=" + detail4Path + ", detail5Name=" + detail5Name
				+ ", detail5Path=" + detail5Path + "]";
	}
	
	

}
