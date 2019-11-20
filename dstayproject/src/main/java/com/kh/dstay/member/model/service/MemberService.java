<<<<<<< HEAD
<<<<<<< HEAD
package com.kh.dstay.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.kh.dstay.member.model.dao.MemberDao;

public interface MemberService {
}
=======
package com.kh.dstay.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.kh.dstay.member.model.dao.MemberDao;

public interface MemberService {
}
>>>>>>> refs/remotes/origin/dobin
=======
package com.kh.dstay.member.model.service;

import javax.validation.constraints.Email;

import com.kh.dstay.member.model.vo.Member;

public interface MemberService {
	// 박현정
	//로그인용 서비스
	Member login(Member mem);
	//이메일 중복체크용 서비스
	int ajaxDuplicateCheck(@Email String email);

}
>>>>>>> refs/remotes/origin/hyunjung
