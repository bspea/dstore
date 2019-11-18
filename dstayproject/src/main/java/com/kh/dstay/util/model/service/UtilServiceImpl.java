package com.kh.dstay.util.model.service;

import org.springframework.beans.factory.annotation.Autowired;
<<<<<<< HEAD
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class UtilServiceImpl implements UtilService{

	@Autowired
	private JavaMailSender javaMailSender;
=======
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

@Service
public class UtilServiceImpl implements UtilService{

	@Autowired
	private JavaMailSenderImpl javaMailSender;

	
	
>>>>>>> branch 'hyunjung' of https://github.com/bspea/dstore.git
}
