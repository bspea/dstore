package com.kh.dstay.lee.products.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode

public class Product {

	private int pno;
	private int pcno;
	private String pname;
	private int price;
	private String pcontents;
	private Date penrolldate;
	private int calorie;
	private String pstatus;
	private String pipath;
	private String pcname;
}

