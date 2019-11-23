package com.kh.dstay.guestOrder.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class GuestOrder {

	private int goNo;
	private int payNo;
	private int no;
	private String name;
	private String phone;
	private String email;
	private int post;
	private String address;
	private String detailAddress;
	private String request;
	private Date date;
	private String status;
	
}
