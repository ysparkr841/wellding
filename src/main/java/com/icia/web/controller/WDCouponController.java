package com.icia.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("WDCouponController")
public class WDCouponController {
	
	private static Logger logger = LoggerFactory.getLogger(WDCouponController.class);
	
	//쿠키명
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	@RequestMapping(value="/board/Coupon")
	public String coupon(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		
		
		
		return "/board/Coupon";
	}

}
