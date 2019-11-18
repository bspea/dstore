package com.kh.dstay.member.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Member {
	public int no;
	public String email;
	public String phone;
	public String password;
	public String name;
	public String nickName;
	public String address;
	public String gender;
	public int age;
	public int goalCalorie;
	public Date date;
	public String status;
}