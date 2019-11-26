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
public class ReviewImage {
	
	private int no;
	private int reviewNo;
	private String imgName;
	private int level;
	private Date date;
	private String status;

}
