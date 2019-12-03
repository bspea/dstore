package com.kh.dstay.admin.member.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Coupon {	
	private int no;
	private int infoNo;
	private int memberNo;
	private Date useDate;
	private String status;
	
	
}
