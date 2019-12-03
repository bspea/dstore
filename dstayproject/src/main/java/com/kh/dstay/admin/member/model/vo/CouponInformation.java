package com.kh.dstay.admin.member.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class CouponInformation {
	private int no;
	private int productNo;
	private String code;
	private String name;
	private String category;
	private float rate;
	private Date startDate;
	private Date endDate;
}
