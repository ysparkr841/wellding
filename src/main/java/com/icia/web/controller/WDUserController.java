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
	//회원가입
	@RequestMapping(value="/user/regform", method=RequestMethod.GET)
	public String regform(HttpServletRequest request, HttpServletResponse response)
	{
		String cookieUserId = CookieUtil.getHexValue(request,  AUTH_COOKIE_NAME);
		
		if(StringUtil.isEmpty(cookieUserId))
		{
			return "/user/regform";
		}
		else
		{
			CookieUtil.deleteCookie(request, response,  AUTH_COOKIE_NAME);	
			
			return "redirect:/";
		}
	}
	
	//중복아이디 체크
		@RequestMapping(value="/user/idCheck", method=RequestMethod.POST)
		@ResponseBody
		public Response<Object> idCheck(HttpServletRequest request, HttpServletResponse response)
		{
			String userId = HttpUtil.get(request, "userId");
			Response<Object> ajaxResponse = new Response<Object>();
			
			if(!StringUtil.isEmpty(userId))
			{
				if(wduserService.userSelect(userId) == null)
				{
					
					ajaxResponse.setResponse(0, "Success");
				}
				else
				{
					ajaxResponse.setResponse(100, "Duplicate ID");
				}
			}
			else
			{
				ajaxResponse.setResponse(400, "Bad Request");
			}
			
			return ajaxResponse;
		}
		
	//회원가입
	@RequestMapping(value="/user/regProc", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public Response<Object> regProc(HttpServletRequest request, HttpServletResponse response)
	{
		Response<Object> ajaxResponse = new Response<Object>();
		String userId = HttpUtil.get(request, "id", "");
		String userPwd = HttpUtil.get(request, "pwd1", "");
		String userName = HttpUtil.get(request, "name", "");
		String phone = HttpUtil.get(request, "number", "");
		String year = HttpUtil.get(request, "year", "");
		String month = HttpUtil.get(request, "month", "");
		String day = HttpUtil.get(request, "day", "");
		String marry = year + month + day;
		
		String gender = HttpUtil.get(request, "gender", "");
		String nickName = HttpUtil.get(request, "nickname", "");
		String email = HttpUtil.get(request, "email", "");
		
		WDUser wdUser = new WDUser();
		
		wdUser.setUserId(userId);
		wdUser.setUserPwd(userPwd);
		wdUser.setUserName(userName);
		wdUser.setUserNumber(phone);
		wdUser.setMarrtDate(marry);
		wdUser.setUserGender(gender);
		wdUser.setUserNickname(nickName);
		wdUser.setUserEmail(email);
		wdUser.setStatus("Y");
		if(!StringUtil.isEmpty(userId) && !StringUtil.isEmpty(userPwd) && !StringUtil.isEmpty(userName) && !StringUtil.isEmpty(phone) &&
			!StringUtil.isEmpty(marry) && !StringUtil.isEmpty(gender) && !StringUtil.isEmpty(nickName) && !StringUtil.isEmpty(email)) 
		{
			System.out.println("다 들어왔어용 : "+userId );
			if(wduserService.userInsert(wdUser) > 0) {
				ajaxResponse.setResponse(0, "Success");
			}
			else {
				ajaxResponse.setResponse(500, "Bad Request");
			}
		}
		else {
			ajaxResponse.setResponse(400, "Bad Request");
		}		
		
		return ajaxResponse;
	}
	
	@RequestMapping(value="/user/update")
	@ResponseBody
	public Response<Object> modify(HttpServletRequest request, HttpServletResponse response){
		
		Response<Object> ajaxResponse = new Response<Object>();
		
		String cookieUserId = CookieUtil.getHexValue(request,  AUTH_COOKIE_NAME);
		
		String userPwd = HttpUtil.get(request, "pwd1", "");
		String userName = HttpUtil.get(request, "name", "");
		String phone = HttpUtil.get(request, "number", "");
		String year = HttpUtil.get(request, "year", "");
		String month = HttpUtil.get(request, "month", "");
		String day = HttpUtil.get(request, "day", "");
		String marry = year + month + day;
		String nickName = HttpUtil.get(request, "nickname", "");
		String email = HttpUtil.get(request, "email", "");
		
		WDUser wdUser = new WDUser();
		
		wdUser.setUserId(cookieUserId);
		wdUser.setUserPwd(userPwd);
		wdUser.setUserName(userName);
		wdUser.setUserNumber(phone);
		wdUser.setMarrtDate(marry);
		wdUser.setUserNickname(nickName);
		wdUser.setUserEmail(email);
		
		if(!StringUtil.isEmpty(wdUser.getUserId())) {
			if(!StringUtil.isEmpty(userPwd) && !StringUtil.isEmpty(userName) && !StringUtil.isEmpty(phone) &&
					!StringUtil.isEmpty(marry) && !StringUtil.isEmpty(nickName) && !StringUtil.isEmpty(email)) 
				{
					if(wduserService.userUpdate(wdUser) > 0) {
						ajaxResponse.setResponse(0, "Success");
					}
					else {
						ajaxResponse.setResponse(500, "Bad Request");
					}
				}
				else {
					ajaxResponse.setResponse(400, "Bad Request");
				}	
		}
		else {
			ajaxResponse.setResponse(500, "Bad Request");
		}
		
		return ajaxResponse;
		
	}
	
	

}
