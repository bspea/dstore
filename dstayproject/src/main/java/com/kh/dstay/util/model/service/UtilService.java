package com.kh.dstay.util.model.service;

import java.util.HashMap;

import javax.mail.MessagingException;
import javax.validation.constraints.Email;

import net.nurigo.java_sdk.exceptions.CoolsmsException;

public interface UtilService {
	//이메일 인증 보내는 서비스
	boolean verifyEmail(@Email String email, String emailMsg, String random) throws MessagingException;
	//휴대폰 문자 보내는 서비스
	boolean selectFindEmailMember(String phone, String  randomSMS) throws CoolsmsException;


}
