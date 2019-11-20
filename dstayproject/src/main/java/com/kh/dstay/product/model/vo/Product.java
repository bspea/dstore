package com.kh.dstay.product.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Product {
	private int no;
	private int categoryNo;
	private String name;
	private int price;
	private String contents;
	private Date enrollDate;
	private int calorie;
	private String status;
	
//	차종환
	private String path;
}
