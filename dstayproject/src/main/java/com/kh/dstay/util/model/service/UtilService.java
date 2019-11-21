package com.kh.dstay.util.model.service;

import javax.mail.MessagingException;
import javax.validation.constraints.Email;

public interface UtilService {
	//이메일 인증 보내는 서비스
	boolean verifyEmail(@Email String email, String random) throws MessagingException;


}
