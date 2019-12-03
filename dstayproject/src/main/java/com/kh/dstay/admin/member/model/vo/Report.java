package com.kh.dstay.admin.member.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Report {
	
	private int no;
	private int sendNo;
	private int recvNo;
	private String content;
	private Date reportedDate;
	private int incidientNo;
	//private int memberNo;	// 신고당한 사람
	private String incidientResult;
	private Date incidientedDate;
}
