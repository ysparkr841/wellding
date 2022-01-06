package com.icia.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.icia.common.util.StringUtil;
import com.icia.web.model.Paging;
import com.icia.web.model.WDRez;
import com.icia.web.service.WDDressService;
import com.icia.web.service.WDHallService;
import com.icia.web.service.WDMakeUpService;
import com.icia.web.service.WDRezService;
import com.icia.web.service.WDStudioService;
import com.icia.web.service.WDUserService;
import com.icia.web.util.CookieUtil;
import com.icia.web.util.HttpUtil;

@Controller("wdRezController")
public class WDRezController {
	
	private static Logger logger = LoggerFactory.getLogger(WDRezController.class);

		//쿠키명
		@Value("#{env['auth.cookie.name']}")
		private String AUTH_COOKIE_NAME;
		
		//유저서비스
		@Autowired
		private WDUserService wdUserService;
		
		//홀 서비스
		@Autowired
		private WDHallService wdHallService;
		
		//스튜디오 서비스
		private WDStudioService wdStudioService;
		
		//메이크업 서비스
		@Autowired
		private WDMakeUpService wdMakeUpService;
		
		//드레스 서비스
		@Autowired
		private WDDressService wdDressService;
		
		@Autowired
		private WDRezService wdRezService;
	
	@RequestMapping(value="/cart")
	public String cart(ModelMap model, HttpServletRequest request, HttpServletResponse response)
	{
		String cookieUserId = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
		
		
				
		 /* if(StringUtil.isEmpty(cookieUserId)) 
		  * { 
		  * 	return "/index"; 
		  * } */
		WDRez wdRez = null;
		
		if(cookieUserId != null)
		{	
			wdRez = wdRezService.rezList(cookieUserId);
		}
		
		model.addAttribute("wdRez", wdRez);
		
		return "/cart";
	}
	
}
