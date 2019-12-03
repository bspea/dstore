package com.kh.dstay.admin.product.model.vo;

import java.sql.Date;

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
public class ProductSale {

	private int no;
	private int productNo;
	private String productName;
	private float salePercent;
	private int limitedAmount;
	private int cellCount;
	private Date startDate;
	private Date endDate;
	private Date earlyEndDate;
	
	
}
