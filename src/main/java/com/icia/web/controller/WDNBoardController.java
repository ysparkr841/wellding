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
import com.icia.web.model.WDNBoard;
import com.icia.web.service.WDNBoardService;
import com.icia.web.util.HttpUtil;

@Controller("wdnBoardController")
public class WDNBoardController 
{
	private static Logger logger = LoggerFactory.getLogger(WDNBoardController.class);
	
	//쿠키명
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	@Autowired
	private WDNBoardService wdNBoardService;
	
	private static final int LIST_COUNT = 20;		//한 페이지의 게시물 수
	private static final int PAGE_COUNT = 5;		//페이징 수
	
	@RequestMapping(value="/board/nList")
	public String nBoard(ModelMap model, HttpServletRequest request, HttpServletResponse response)
	{	//조회항목(1: 제목)
		String searchType = HttpUtil.get(request, "searchType", "");
		//조회 값
		String searchValue = HttpUtil.get(request, "searchValue", "");
		//현재 페이지
		long curPage = HttpUtil.get(request, "curPage", (long)1);
		
		long totalCount = 0;
		List<WDNBoard> list = null;
		//페이징 객체															-- 나중에 페이징 처리 하기
		Paging paging = null;
		//조회 객체
		WDNBoard search = new WDNBoard();
		
		if(!StringUtil.isEmpty(searchType) && !StringUtil.isEmpty(searchValue))
		{
			search.setSearchType(searchType);
			search.setSearchValue(searchValue);
		}
		else
		{
			searchType = "";
			searchValue = "";
		}
		
		totalCount = wdNBoardService.nBoardListCount(search);
		
		logger.debug("totalCount : " + totalCount);
		
		if(totalCount > 0)
		{//검색 결과가 있음
			//페이징 처리 추가
			paging = new Paging("/board/nList", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage");
			 //페이징처리 : 인수값이 있다 = 생성자가 있다

			paging.addParam("searchType", searchType);
			paging.addParam("searchValue", searchValue);
			paging.addParam("curPage", curPage);
			
			search.setStartRow(paging.getStartRow());
			search.setEndRow(paging.getEndRow());
			
			list = wdNBoardService.nBoardList(search);			
		}
		
		model.addAttribute("list", list);
		model.addAttribute("searchType", searchType);
		model.addAttribute("searchValue", searchValue);
		model.addAttribute("curPage", curPage);
		//""는 list.jsp에서 쓸수있는 변수들 임, 뒤에있는 값은 내 메소드 내에서 쓸수있는 값
		model.addAttribute("paging", paging);	//jsp에서 써먹으려고 만든다!
		
		return "/board/nList";
	}
}
