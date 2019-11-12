package com.kh.dstay.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@AllArgsConstructor@ToString
public class Member {
	
	private int no;
	private String email;
	private String phone;
	private String password;
	private String name;
	private String nickName;
	private String gender;
	private int age;
	private int goalCalorie;
	private Date date;
	private String status;
	
	public Member() {}
	
}
