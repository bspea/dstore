<<<<<<< HEAD
<<<<<<< HEAD
package com.kh.dstay.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.member.model.dao.MemberDao;

@Service("memberSerivce")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;
}
=======
package com.kh.dstay.member.model.service;

public class MemberServiceImpl {

}
>>>>>>> refs/remotes/origin/dobin
=======
package com.kh.dstay.member.model.service;

import javax.validation.constraints.Email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.member.model.dao.MemberDao;
import com.kh.dstay.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{

	// 박현정
	@Autowired
	private MemberDao mDao;
	@Override
	public Member login(Member mem) {
		// TODO Auto-generated method stub
		return mDao.login(mem);
	}
	@Override
	public int ajaxDuplicateCheck(@Email String email) {
		// TODO Auto-generated method stub
		return mDao.ajaxDuplicateCheck(email);
	}

}
>>>>>>> refs/remotes/origin/hyunjung
