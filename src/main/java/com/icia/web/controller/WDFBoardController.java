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

import com.icia.common.util.StringUtil;
import com.icia.web.model.Paging;
import com.icia.web.model.WDFBoard;
import com.icia.web.model.WDUser;
import com.icia.web.service.WDFBoardService;
import com.icia.web.service.WDUserService;
import com.icia.web.util.CookieUtil;
import com.icia.web.util.HttpUtil;

@Controller("wdFBoardController")
public class WDFBoardController 
{
	private static Logger logger = LoggerFactory.getLogger(WDFBoardController.class);
	
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	@Autowired
	private WDFBoardService wdFBoardService;
	
	@Autowired
	private WDUserService wdUserService;
	
	//파일 저장경로
	@Value("#{env['upload.save.dir']}")
	private String UPLOAD_SAVE_DIR;
	
	private static final int LIST_COUNT = 20;
	private static final int PAGE_COUNT = 5;
	
	@RequestMapping(value="/board/fBoard")
	public String list(ModelMap model, HttpServletRequest request, HttpServletResponse response) 
	{
		String searchType = HttpUtil.get(request, "searchType", "");
		String searchValue = HttpUtil.get(request, "searchValue", "");
		long curPage = HttpUtil.get(request, "curPage", (long)1);
		String cookieUserId = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
		
		logger.debug("============searchType========= : "+ searchType);
		logger.debug("============searchValue========= : "+ searchValue);
		
		WDUser wdUser = wdUserService.userSelect(cookieUserId);
		
		long totalCount = 0;
		List<WDFBoard> list = null;
		
		//페이징 객체
		Paging paging = null;
		
		WDFBoard search = new WDFBoard();
		
		if(!StringUtil.isEmpty(searchType) && !StringUtil.isEmpty(searchValue)) 
		{
			//받아온 값
			search.setSearchType(searchType);
			search.setSearchValue(searchValue);
		}
		else 
		{
			searchType = "";
			searchValue = "";
		}
		
		//페이징 처리를 위한 totalCount, 그리고 값이 있어야 가져오니까, 풀스캔 안하는 용도도 있음.
		totalCount = wdFBoardService.fBoardListCount(search);
		
		logger.debug("[totalCount] = "+totalCount);
		
		if(totalCount > 0) 
		{
			paging = new Paging("/board/fboard", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage");
			paging.addParam("searchType", searchType);
			paging.addParam("searchValue", searchValue);
			paging.addParam("curPage", curPage);
			
			search.setStartRow(paging.getStartRow());
			search.setEndRow(paging.getEndRow());
			
			list = wdFBoardService.fBoardList(search);
		}
		
		
		
		model.addAttribute("list", list);
		model.addAttribute("searchType", searchType);
		model.addAttribute("searchValue", searchValue);
		model.addAttribute("curPage", curPage);
		model.addAttribute("paging", paging);
		model.addAttribute("wdUser", wdUser);
		
		return "/board/fBoard";
	}
	
	@RequestMapping(value="/board/fBoardWrite", method=RequestMethod.POST)
	public String fBoardWrite(HttpServletRequest request, HttpServletResponse response) 
	{
		return "/board/fBoardWrite";
	}
}
