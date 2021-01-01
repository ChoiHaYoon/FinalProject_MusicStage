package com.musicstage.spring.member.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.musicstage.spring.member.model.vo.Member;

@RestController
public class MemberControllerImpl {
	
//	@PostMapping(value= "api/join.me", produces = MediaType.APPLICATION_JSON_VALUE)
//	@RequestMapping("api/join.me")
//	@ResponseBody
//	public String save(@RequestParam("userId") String userId, @RequestParam("password") String password, @RequestParam("userName") String userName, HttpServletResponse response) {
//		
//		response.setContentType("application/json; charset=UTF-8");
//		
//		JSONObject obj = new JSONObject();
//		obj.put("userId", userId);
//		obj.put("password", password);
//		obj.put("userName", userName);
//		
//		System.out.println("save 호출");
//		
//		return obj.toJSONString();
//	}
	
//	@RequestMapping(value="api/join.me", method=RequestMethod.POST )
//	@ResponseBody
//	public int save(@RequestBody Member m, HttpServletResponse response) {
//		
////		response.setContentType("application/json; charset=UTF-8");
////		
////		JSONObject obj = new JSONObject();
////		obj.put("userId", m.getUserId());
////		obj.put("password", m.getPassword());
////		obj.put("userName", m.getUserName());
//		
//		System.out.println("save() 호출");
//		
//		return 1;
//	}
	
	@RequestMapping("hello.me")
	public String hello() {
		return "Hello REST!!";
	}
	
//	@RequestMapping("member.me")
//	public MemberVO member() {
//		
//		MemberVO vo = new MemberVO();
//		vo.setId("hong");
//		vo.setPwd("1234");
//		vo.setName("홍길동");
//		vo.setEmail("hong@test.com");
//		return vo;
//	}
}
