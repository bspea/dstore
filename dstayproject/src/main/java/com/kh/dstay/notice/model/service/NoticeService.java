package com.kh.dstay.notice.model.service;

import java.util.ArrayList;

import com.kh.dstay.notice.model.vo.Notice;
import com.kh.dstay.notice.model.vo.NoticeReply;
import com.kh.dstay.notice.model.vo.PageInfo;

public interface NoticeService {
	
	// 1_1. 怨듭��궗�빆 珥� 媛��닔 議고쉶�슜 �꽌鍮꾩뒪
	int getNoticeListCount();
	
	// 1_2. �쁽�옱 �럹�씠吏��뿉 蹂댁뿬吏� 寃뚯떆湲� 由ъ뒪�듃 議고쉶�슜 �꽌鍮꾩뒪
	ArrayList<Notice> selectNoticeList(PageInfo pi);

	int insertNotice(Notice n);
	
	Notice selectNotice(int noticeNo);

	Notice selectPrevNotice(int noticeNo);

	Notice selectNextNotice(int noticeNo);

	ArrayList<NoticeReply> selectReplyList(int refNoticeId);

	int insertReply(NoticeReply r);
}
