package com.kh.dstay.notice.model.service;

import java.util.ArrayList;

import com.kh.dstay.notice.model.vo.Notice;
import com.kh.dstay.notice.model.vo.PageInfo;

public interface NoticeService {
	
	// 1_1. 공지사항 총 갯수 조회용 서비스
	int getNoticeListCount();
	
	// 1_2. 현재 페이지에 보여질 게시글 리스트 조회용 서비스
	ArrayList<Notice> selectNoticeList(PageInfo pi);
}
