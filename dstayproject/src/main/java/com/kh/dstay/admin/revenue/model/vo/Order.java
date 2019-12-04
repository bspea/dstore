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
public class Order {
	private int no;
	private int productNo;
	private int memberNo;
	private int payNo;
	private int count;
	private int postNo;
	private String address;
	private String addressDetail;
	private String request;
	private Date enrollDate;
	private String status;
	private int waybillNo;
}
