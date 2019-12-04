package com.kh.dstay.admin.revenue.model.vo;

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
public class Refund {
	
	private int no;
	private int memberNo;
	private int orderNo;
	private String isLogin;
	private String content;
	private Date date;
	private String result;
	private int price;
	private Date resultDate;
}
