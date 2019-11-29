package com.kh.dstay.member.model.vo;

import java.sql.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class Member {
	private int no;
	@Email@NotNull
	private String email;
	private String phone;
	private String password;
	private String name;
	private String nickName;
	private String address;
	private String gender;
	private int age;
	private int goalCalorie;
	private Date date;
	private String status;
	private int memberStatusNo;
}