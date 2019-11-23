package com.kh.dstay.product.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

public class Product {
	private int no;
	private int categoryNo;
	private String name;
	private int price;
	private String contents;
	private Date enrollDate;
	private int calorie;
	private String status;
	private String path;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public int getCalorie() {
		return calorie;
	}
	public void setCalorie(int calorie) {
		this.calorie = calorie;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public Product(int no, int categoryNo, String name, int price, String contents, Date enrollDate, int calorie,
			String status, String path) {
		super();
		this.no = no;
		this.categoryNo = categoryNo;
		this.name = name;
		this.price = price;
		this.contents = contents;
		this.enrollDate = enrollDate;
		this.calorie = calorie;
		this.status = status;
		this.path = path;
	}
	public Product() {
		super();
	}
	@Override
	public String toString() {
		return "Product [no=" + no + ", categoryNo=" + categoryNo + ", name=" + name + ", price=" + price
				+ ", contents=" + contents + ", enrollDate=" + enrollDate + ", calorie=" + calorie + ", status="
				+ status + ", path=" + path + "]";
	}
	
	
}
