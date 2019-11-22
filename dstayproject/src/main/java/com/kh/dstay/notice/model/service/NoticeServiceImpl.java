package com.kh.dstay.notice.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.notice.model.dao.NoticeDao;
import com.kh.dstay.notice.model.vo.Notice;
import com.kh.dstay.notice.model.vo.PageInfo;

@Service("nService")
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDao nDao;

	@Override
	public int getNoticeListCount() {
		
		return nDao.getNoticeListCount();
	}

	@Override
	public ArrayList<Notice> selectNoticeList(PageInfo pi) {
		
		return nDao.selectNoticeList(pi);
	}

	@Override
	public int insertNotice(Notice n) {
		
		return nDao.insertNotice(n);
	}

	@Override
	public Notice selectNotice(int noticeNo) {
		
		return nDao.selectnotice(noticeNo);
	}

	@Override
	public Notice selectPrevNotice(int noticeNo) {
		
		return nDao.selectPrevNotice(noticeNo);
	}

	@Override
	public Notice selectNextNotice(int noticeNo) {
		
		return nDao.selectNextNotice(noticeNo);
	}
	
	
}
