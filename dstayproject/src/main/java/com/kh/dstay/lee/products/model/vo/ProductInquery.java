package com.kh.dstay.lee.products.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class ProductInquery {

	private int pino; 			// 문의번호
	private int mno;			// 회원번호
	private int pno;			// 상품번호
	private String pititle;		// 문의제목
	private String picontents;	// 문의내용
	private Date pidate;		// 문의일
	private String pistatus;	// 문의상태
	private String pianswer;	// 문의답변
	private Date pianswerdate;	// 문의답변일
	private String membernickname;//회원닉네임
}
