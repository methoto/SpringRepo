package com.myhome.meta.controller;

import java.util.Locale;

import javax.servlet.http.Cookie;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myhome.meta.service.SubService;


@Controller
public class SubController {
	
	@Autowired
	private SubService subservice;
	
	//서브1-1 폼 이동
	@RequestMapping(value = "/sub1-1.do", method = RequestMethod.GET)
	public String join() {
		return "sub/sub1-1"; 
	}
}
