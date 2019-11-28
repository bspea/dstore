package com.kh.dstay.customer_center.model.vo;

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
public class Chat {
	
	private int chatNo;
	private int chatWriter;
	private String nickName;
	private String chatContents;
	private String chatTime;
	private String chatRead;
}
