package com.kh.dstay.notice.model.vo;

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
public class Notice {
	
	private int noticeNo;				
	private String noticeTitle;			
	private String noticeContents;		
	private Date writeDate;				
	private String noticeCategory;		
	private String status;				
}
