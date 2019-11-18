package com.kh.dstay.member.model.vo;

import java.sql.Date;

<<<<<<< HEAD
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
=======
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
>>>>>>> refs/remotes/origin/jonghwan
