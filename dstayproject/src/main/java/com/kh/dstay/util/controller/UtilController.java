package com.kh.dstay.util.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.dstay.util.model.vo.UtilParameter;

@Controller
public class UtilController {

	@RequestMapping("ajaxGetGoogleClientId.do")@ResponseBody
	public String ajaxGetGoogleClientId() {
		
		return new UtilParameter().getGoogleClientId();
	}
}
