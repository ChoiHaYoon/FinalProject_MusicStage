package com.musicstage.spring.common.email.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.musicstage.spring.common.email.service.MailService;

@Controller
public class EmailController {
	
	@Autowired
	MailService mailService;
	
	@ResponseBody
	@RequestMapping("random.com")
	public void email(HttpServletResponse response) {
				
		int random = new Random().nextInt(900000) + 100000;
		
		
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			
			response.getWriter().print(mapper.writeValueAsString(random));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@ResponseBody
	@RequestMapping("emailCheck.com")
	public String emailCheck(@RequestParam String email, @RequestParam String random) {
		
		String subject = "회원가입 인증 코드 발급 안내 입니다";
		StringBuilder sb = new StringBuilder();
		sb.append("인증코드는 " + random + " 입니다");
		
		boolean result = mailService.send(subject, sb.toString(), "ukd102@gmail.com", email);
		
		if(result == true) {
			return "ok";
		} else {
			return "false";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("emailAuth.com")
	public String emailAuth(@RequestParam String random, @RequestParam String auth) {
		
		if(random.equals(auth)) {
			return "ok";
		} else {
			return "false";
		}
	}
}
