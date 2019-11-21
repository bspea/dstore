package com.kh.dstay.util.model.service;

import java.util.HashMap;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.validation.constraints.Email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class UtilServiceImpl implements UtilService{

	@Autowired
	private JavaMailSenderImpl javaMailSender;

	@Override
	public boolean verifyEmail(@Email String email, String emailMsg, String random) throws MessagingException {
		// TODO Auto-generated method stub
		MimeMessage mMessage = javaMailSender.createMimeMessage();
		/*
		 * mMessage.setFrom("dstay20191205@gmail.com"); mMessage.setText("test",
		 * "utf-8"); mMessage.setSender(email);
		 */
		
			      MimeMessageHelper message = new MimeMessageHelper(mMessage, true, "UTF-8");
			      message.setFrom("dstay20191205@gmail.com");
			     message.setTo(email);
			     message.setSubject("이메일 인증용 메일 입니다");
			      message.setText(emailMsg + " : " + random, true);
			     // message.addInline("myLogo", new ClassPathResource("img/mylogo.gif"));
			     // message.addAttachment("myDocument.pdf", new ClassPathResource("doc/myDocument.pdf");
			      javaMailSender.send(mMessage);
			      return true;
	}

	@Override
	public boolean selectFindEmailMember(String phone, String phoneSMS) throws CoolsmsException {
		// TODO Auto-generated method stub
			String api_key = "NCSKHTXULJDNS6PB";
			String api_secret = "2VL1OJOFFDNOHL5LW57VTXQ8OZOU88JO";
			Message coolsms = new Message(api_key, api_secret);
			HashMap<String,String> params = new HashMap<String,String>();
		    params.put("to", phone);
		    params.put("from", "01045521941");
		    params.put("type", "SMS");
		    params.put("text", "인증번호 : " + phoneSMS);
		   // params.put("app_version", "test app 1.2"); // application name and version
		    HashMap<String,String> checkMap = coolsms.send(params);
		    return !checkMap.isEmpty();
	}

}
