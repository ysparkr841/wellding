package com.icia.web.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icia.common.util.StringUtil;
import com.icia.web.model.Response;
import com.icia.web.model.WDUser;
import com.icia.web.service.WDUserService;
import com.icia.web.util.CookieUtil;
import com.icia.web.util.HttpUtil;
import com.icia.web.util.JsonUtil;

@Controller("WDUserController")
public class WDUserController 
{
	private static Logger logger = LoggerFactory.getLogger(WDUserController.class);
	
	//쿠키명
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	@Autowired
	private WDUserService wduserService;
	
	@RequestMapping(value="/imokay", method=RequestMethod.POST)
	@ResponseBody
	public Response<Object> login(ModelMap model, HttpServletRequest request, HttpServletResponse response)
	{
		System.out.println("시작!!!!!!!!!!!!!!!!!!!!!!");
		String userId = HttpUtil.get(request, "userId");
		String userPwd = HttpUtil.get(request, "userPwd");
		Response<Object> ajaxResponse = new Response<Object>();
		
		String userName = "";
		
		if(!StringUtil.isEmpty(userId) && !StringUtil.isEmpty(userPwd)) 
		{
			WDUser user = wduserService.userSelect(userId);
			
			if(user != null)
			{
				if(StringUtil.equals(user.getUserPwd(), userPwd))
				{
					if(StringUtil.equals(user.getStatus(), "Y"))
					{
						CookieUtil.addCookie(response, "/", -1, AUTH_COOKIE_NAME, CookieUtil.stringToHex(userId));
						userName = user.getUserName();
						model.addAttribute("userName",userName);
						ajaxResponse.setResponse(0, "Success"); // 로그인 성공
					}
					else
					{
						ajaxResponse.setResponse(403, "Not Found"); // 정지된 아이디!
					}
				}
				else
				{
					ajaxResponse.setResponse(-1, "Passwords do not match"); // 비밀번호 불일치
				}
			}
			else
			{
				ajaxResponse.setResponse(404, "Not Found"); // 사용자 정보 없음 (Not Found)
			}
		}
		else
		{
			ajaxResponse.setResponse(400, "Bad Request"); // 파라미터가 올바르지 않음 (Bad Request)
		}
		
		if(logger.isDebugEnabled())
		{
			logger.debug("[WDUserController] /login response\n" + JsonUtil.toJsonPretty(ajaxResponse));
		}
		
		
		return ajaxResponse;		
	}
	
	//로그아웃
	@RequestMapping(value="/loginOut", method=RequestMethod.GET)
	public String loginOut(HttpServletRequest request, HttpServletResponse response)
	{
		if(CookieUtil.getCookie(request, AUTH_COOKIE_NAME) != null)
		{
			CookieUtil.deleteCookie(request, response, "/", AUTH_COOKIE_NAME);
		}
		
		return "redirect:/";
	}
	

}
