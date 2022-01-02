/**
 * <pre>
 * 프로젝트명 : HiBoard
 * 패키지명   : com.icia.web.controller
 * 파일명     : IndexController.java
 * 작성일     : 2021. 1. 21.
 * 작성자     : daekk
 * </pre>
 */
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
import org.springframework.web.bind.annotation.RequestMethod;

import com.icia.web.model.WDEBoard;
import com.icia.web.model.WDFBoard;
import com.icia.web.model.WDHall;
import com.icia.web.model.WDUser;
import com.icia.web.service.WDEBoardService;
import com.icia.web.service.WDFBoardService;
import com.icia.web.service.WDHallService;
import com.icia.web.service.WDUserService;
import com.icia.web.util.CookieUtil;

/**
 * <pre>
 * 패키지명   : com.icia.web.controller
 * 파일명     : IndexController.java
 * 작성일     : 2021. 1. 21.
 * 작성자     : daekk
 * 설명       : 인덱스 컨트롤러
 * </pre>
 */
@Controller("indexController")
public class IndexController
{
   private static Logger logger = LoggerFactory.getLogger(IndexController.class);

	//쿠키명
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	//유저서비스
	@Autowired
	private WDUserService wdUserService;
	
	//홀 서비스
	@Autowired
	private WDHallService wdHallService;
	
	//이벤트 서비스
	@Autowired
	private WDEBoardService wdEBoardService;
	
	//자유게시판 서비스
	@Autowired
	private WDFBoardService wdFBoardService;
		
	@RequestMapping(value = "/index", method=RequestMethod.GET)
	public String index(ModelMap model, HttpServletRequest request, HttpServletResponse response)
	{
		
		//쿠키 확인
		String cookieUserId = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
		
		//로그인 했을 때와 안했을 때를 구분해서 페이지를 보여주려 함.
		//로그인 체크용. 0 => 로그인 x, 혹은 없는 계정; 1 => 로그인 정보 있는 계정
		int loginS = 0;
		WDUser wdUser = null;
		
		if(wdUserService.wdUserIdCount(cookieUserId) >0) 
		{
			//쿠키 아이디로 된 유저 정보가 db에 존재함.
			wdUser = wdUserService.userSelect(cookieUserId);
			if(wdUser != null) 
			{
				//객체가 비어있지 않으면 보여줄 유저의 정보를 담은 객체를 넘기고, 로그인 상태에 1을 넣어줌.
				loginS = 1;
				model.addAttribute("wdUser", wdUser);
			}
		}
		else 
		{
			loginS = 0;
		}
		
		
		//홀 보여줄 WDHall 객체, 모델맵으로 넘김
		List<WDHall> hall = null;
		
		hall = wdHallService.WDHallRanking();
		
		/*
		if(hall != null) 
		{
			model.addAttribute("hall", hall);
		}
		//어차피 인덱스 페이지라 굳이 필요 없어보임
		*/
		model.addAttribute("hall", hall);
		
		//이벤트 
		WDEBoard eSearch = new WDEBoard();
		//이벤트 글 3개만 보여줄거니깐, 1-3으로 넣었는데, 이건 뭐 어떻게 할지 논의해보면 좋을듯.
		eSearch.setStartRow(1);
		eSearch.setEndRow(5);
		
		List<WDEBoard> wdEBoard = null;
		
		wdEBoard = wdEBoardService.eBoardList(eSearch);
		model.addAttribute("wdEBoard", wdEBoard);
		
		//자유게시판 글
		WDFBoard fSearch = new WDFBoard();
		fSearch.setStartRow(11);
		fSearch.setEndRow(15);
		
		List<WDFBoard> wdFBoard = null;
		
		wdFBoard = wdFBoardService.fBoardList(fSearch);
				
		model.addAttribute("wdFBoard", wdFBoard);
		
		return "/index";
	}


	   @RequestMapping(value="/board/login", method=RequestMethod.GET)
	   public String loginForm(HttpServletRequest request, HttpServletResponse response)
	   {
	      return "/board/login";
	   }

	   
		
	
	
	/*회원가입폼*/
	@RequestMapping(value="/board/regform", method=RequestMethod.GET)
	public String regform(HttpServletRequest request, HttpServletResponse response)
	{
		return "/board/regform";
	}

     

}

