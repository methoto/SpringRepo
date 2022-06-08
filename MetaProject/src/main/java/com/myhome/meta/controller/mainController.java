package com.myhome.meta.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myhome.meta.service.MainService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class mainController {
	
	   @Autowired
	   private MainService mainService;

	   @RequestMapping(value = "/metaproject.do")
	   public String view() {
	      return "meta/main";
	   }

	
}
