package com.icia.web.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;

import com.icia.web.service.WDUserService;

@Controller("wduserController")
public class WDUserController 
{
	private static Logger logger = LoggerFactory.getLogger(WDUserController.class);
	
	//쿠키명
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	@Autowired
	private WDUserService wduserService;
	
	

}
