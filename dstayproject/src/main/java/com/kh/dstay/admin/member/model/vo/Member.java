package com.kh.dstay.admin.member.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Member {
	public int no;
	public int memberStatus;
	public String email;
	public String phone;
	public String name;
	public String nickName;
	public String gender;
	public int age;
	public int goalCalorie;
	public Date enrollDate;
}