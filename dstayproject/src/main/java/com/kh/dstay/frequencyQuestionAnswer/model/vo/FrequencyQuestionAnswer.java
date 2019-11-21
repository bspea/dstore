package com.kh.dstay.frequencyQuestionAnswer.model.vo;

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
public class FrequencyQuestionAnswer {

	private int fqaNo;				// 자주 묻는 질문 번호
	private String category;		// 대분류
	private String division;		// 중분류
	private String qTitle;			// 자주 묻는 질문 제목
	private String aTitle;			// 자주 묻는 질문의 답변 제목
	private String aContents;		// 자주 묻는 질문의 답변 내용
	private String status;			// 자주 묻는 질문 상태
	

}
