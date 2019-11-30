package com.kh.dstay.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MyCoupon {
	
	private int couponNo;
	private int memberNo;
	private int couponInfoNo;
	private int productNo;
	private String couponCode;
	private String couponName;
	private String category;
	private double saleRate;
	private Date startDate;
	private Date endDate;
	private String status;

}
