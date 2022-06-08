package com.myhome.meta.controller;

import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myhome.meta.dao.JoinDao;
import com.myhome.meta.service.JoinService;


@Controller
public class LoginController {
	
	@Autowired
	private JoinService joinservice;
	
	//로그인 폼 이동
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public ModelAndView login(ModelAndView mv, @CookieValue(value = "saveid", required = false) Cookie readCookie)
			throws Exception {
		if (readCookie != null) {
			mv.addObject("saveid", readCookie.getValue());
			System.out.println("cookie time = " + readCookie.getMaxAge());
		}
		mv.setViewName("join/login");
		return mv;
	}
	
	//회원가입 폼 이동
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join() {
		return "join/signup"; 
	}
	
	//IDPW찾기
	@RequestMapping(value = "/findidpw.do", method = RequestMethod.GET)
	public String findIdPw() {
		return "join/findIDPW"; 
	}
	
	//회원가입
	@RequestMapping(value = "/signupProcess.do", method = RequestMethod.POST)
	public void joinProcess(JoinDao member, HttpServletResponse response)  throws Exception {	
		
	}
}
