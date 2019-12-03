package com.kh.dstay.admin.product.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Product {

	private int no;
	private int categoryNo;
	private String name;
	private int price;
	private String content;
	private Date enrollDate;
	private String recipe;
	private int calorie;
	private String status;	// 삭제 or 블라인드 여부
	
	
}
