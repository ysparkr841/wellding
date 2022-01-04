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
import com.icia.web.model.WDEBoard;
import com.icia.web.service.WDEBoardService;
import com.icia.web.util.CookieUtil;
import com.icia.web.util.HttpUtil;

@Controller("wdEBoardController")
public class WDEBoardController
{
	private static final long LIST_COUNT = 5;
	private static final long PAGE_COUNT = 5;

	private static Logger logger = LoggerFactory.getLogger(WDEBoardController.class);
	
		//쿠키명
		@Value("#{env['auth.cookie.name']}")
		private String AUTH_COOKIE_NAME;
		
		//파일 저장경로
		/*
		 * @Value("#{env['upload.save.dir']}") private String UPLOAD_SAVE_DIR;
		 */
		
		@Autowired
		private WDEBoardService wdEBoardService;
		
		// 이벤트 게시판 리스트
		@RequestMapping(value="/board/eBoard")
		public String list(ModelMap model, HttpServletRequest request, HttpServletResponse response)
		{
			
			long totalCount = 0;
			List<WDEBoard> eBoard = null;
			long curPage = HttpUtil.get(request, "curPage", (long)1);
			String searchType = HttpUtil.get(request, "searchType", "");
			String searchValue = HttpUtil.get(request, "searchValue", "");
			
			
			Paging paging = null;
			
			WDEBoard search = new WDEBoard();
			
			if(!StringUtil.isEmpty(searchType) && !StringUtil.isEmpty(searchValue)) 
			{
				//받아온 값이 있음.
				search.setSearchType(searchType);
				search.setSearchValue(searchValue);
			}
			else 
			{
				searchType = "";
				searchValue = "";
			}
			
			totalCount = wdEBoardService.eBoardListCount(search);
			
			if(totalCount > 0 ) 
			{
				
				paging = new Paging("/board/eList", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage");
				paging.addParam("curPage", curPage);
				paging.addParam("searchType", searchType);
				paging.addParam("searchValue", searchValue);
				paging.addParam("curPage", curPage);
				
				search.setStartRow(paging.getStartRow());
				search.setEndRow(paging.getEndRow());
				
				eBoard = wdEBoardService.eBoardList(search);
			}
			
			model.addAttribute("eBoard", eBoard);
			model.addAttribute("searchType", searchType);
			model.addAttribute("searchValue", searchValue);
			model.addAttribute("curPage", curPage);
			model.addAttribute("paging", paging);
			
			return "/board/eBoard";
		}
		
		//게시물 조회
		@RequestMapping(value="/board/eView")
		public String eView(ModelMap model, HttpServletRequest request, HttpServletResponse response) 
		{			
			long eBSeq = HttpUtil.get(request, "eBSeq", (long)0);
			long curPage = HttpUtil.get(request, "curPage", (long)1);
			String searchType = HttpUtil.get(request, "searchType", "");
			String searchValue = HttpUtil.get(request, "searchValue", "");
			
			WDEBoard wdEBoard = null;
		
			if(eBSeq > 0) 
			{
				wdEBoard = wdEBoardService.eBoardSelect(eBSeq);
				
				if(wdEBoard !=null) 
				{
					return "/index";
				}
			}
			model.addAttribute("eBSeq", eBSeq);
			model.addAttribute("searchType", searchType);
			model.addAttribute("searchValue", searchValue);
			model.addAttribute("wdEBoard", wdEBoard);
		
			return "/board/eView";
		}
}
