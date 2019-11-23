package com.kh.dstay.lee.login.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;




@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
public class Member {

	
	private int mno;
	private int msNo;
	private String email;
	private String password;
	private String phone;
	private String nickName;
	private String gender;
	private int age;
	private int goalCalorie;
	private Date mdate;
	

}
