package com.kh.dstay.util.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

@Service
public class UtilServiceImpl implements UtilService{

	@Autowired
	private JavaMailSenderImpl javaMailSender;

	
	

}
