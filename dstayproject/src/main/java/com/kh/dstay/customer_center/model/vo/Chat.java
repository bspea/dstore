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
	private String chatContents;
	private Date chatTime;
	private String chatRead;
}
