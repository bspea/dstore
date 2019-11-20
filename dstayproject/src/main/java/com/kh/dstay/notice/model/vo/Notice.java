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
	
	private int noticeNo;				// 공지사항 번호
	private String noticeTitle;			// 공지사항 제목
	private String noticeContents;		// 공지사항 내용
	private Date writeDate;				// 공지사항 등록일
	private String noticeCategory;		// 공지사항 분류
	private String status;				// 공지사항 상태
}
