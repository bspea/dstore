package com.kh.dstay.util.model.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.validation.constraints.Email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class UtilServiceImpl implements UtilService{

	@Autowired
	private JavaMailSenderImpl javaMailSender;

	@Override
	public boolean verifyEmail(@Email String email, String random) throws MessagingException {
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
			      message.setText("이 번호를 입력해 주세요: " + random, true);
			     // message.addInline("myLogo", new ClassPathResource("img/mylogo.gif"));
			     // message.addAttachment("myDocument.pdf", new ClassPathResource("doc/myDocument.pdf");
			      javaMailSender.send(mMessage);
			      return true;
	}

}
