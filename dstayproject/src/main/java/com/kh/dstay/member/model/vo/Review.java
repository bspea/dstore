package com.kh.dstay.member.model.vo;

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
public class Review {
	
	private int no;
	private int memberNo;
	private int productNo;
	private String productName;
	private String content;
	private int point;
	private Date date;
	private String status;
	private String piPath;
	
}
