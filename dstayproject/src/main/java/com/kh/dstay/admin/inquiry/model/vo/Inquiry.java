package com.kh.dstay.admin.inquiry.model.vo;

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
public class Inquiry {
	private int no;
	private int memberNo;
	private int productNo;
	private String title;
	private String content;
	private Date date;
	private String status;
	private String answer;
	private String answerDate;
}
