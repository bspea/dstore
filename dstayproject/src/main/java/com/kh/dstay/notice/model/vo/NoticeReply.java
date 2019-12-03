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
public class NoticeReply {
	
	private int replyNo;
	private int replyDepth;
	private int refNoticeId;
	private int replyWriter;
	private String replyWriterNickName;
	private String replyContents;
	private Date replyCreateDate;
	private Date replyModifyDate;
	private String replyStatus;
}
