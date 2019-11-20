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
public class NoticeFiles {
	
	private int noticeNo;				// 공지사항 번호
	private int noticeFileNo;			// 공지사항 파일 번호
	private String originFileName;		// 원본파일명
	private String modifiedFileName;	// 수정파일명
	private String extension;			// 확장자
	private Date fileUploadDate;		// 파일 업로드 시간

}
