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
public class Diet {
	
	private int no;		// 고유번호
	private int memberNo;	// 회원번호
	private String foodName;	//음식명
	private int calories;	// 칼로리
	private Date date;		// 기록일(선택된날짜)
	private String type;	// 구분(아침점심 등) 
	private String memo;	// 메모
	private String status; // 상태(삭제 등)
	
}
