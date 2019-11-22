package com.kh.dstay.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.notice.model.vo.Notice;
import com.kh.dstay.notice.model.vo.PageInfo;

@Repository("nDao")
public class NoticeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getNoticeListCount() {
		
		return sqlSession.selectOne("noticeMapper.getNoticeListCount");
	}

	public ArrayList<Notice> selectNoticeList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		ArrayList<Notice> list = (ArrayList)sqlSession.selectList("noticeMapper.selectNoticeList", null, rowBounds);
		
		return list;
	}

	public int insertNotice(Notice n) {
		
		return sqlSession.insert("noticeMapper.insertNotice", n);
	}

	public Notice selectnotice(int noticeNo) {
		
		return sqlSession.selectOne("noticeMapper.selectNotice", noticeNo);
	}

	public Notice selectPrevNotice(int noticeNo) {
		
		return sqlSession.selectOne("noticeMapper.selectPrevNotice", noticeNo);
	}

	public Notice selectNextNotice(int noticeNo) {

		return sqlSession.selectOne("noticeMapper.selectNextNotice", noticeNo);
	}
}
