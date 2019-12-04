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
public class GuestOrder {
	private int no;
	private int productNo;
	private int payNo;
	private int count;
	private String name;
	private String phone;
	private String email;
	private int postNo;
	private String address;
	private String addressDetail;
	private String request;
	private Date date;
	private String status;
	private int waybillNo;
}
