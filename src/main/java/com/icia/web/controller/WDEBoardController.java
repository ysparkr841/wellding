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
	private static final long LIST_COUNT = 20;
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
		
		
		@RequestMapping(value="/board/eList")
		public String list(ModelMap model, HttpServletRequest request, HttpServletResponse response)
		{
			String searchType = HttpUtil.get(request, "searchType", "");
			String searchValue = HttpUtil.get(request, "searchValue", "");
			long curPage = HttpUtil.get(request, "curPage",(long)1);
			
			long totalCount = 0;
			List<WDEBoard> list = null;
			
			Paging paging = null;
			
			WDEBoard search = new WDEBoard();
			
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
			
			totalCount = wdEBoardService.eBoardListCount(search);
			
			if(totalCount > 0 ) 
			{
				
				paging = new Paging("/board/eList", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage");
				paging.addParam("searchType", searchType);
				paging.addParam("searchValue", searchValue);
				paging.addParam("curPage", curPage);
				
				
				search.setStartRow(paging.getStartRow());
				search.setEndRow(paging.getEndRow());
				
				list = wdEBoardService.eBoardList(search);
			}
			
			model.addAttribute("list", list);
			model.addAttribute("searchType", searchType);
			model.addAttribute("searchValue", searchValue);
			model.addAttribute("curPage", curPage);
			model.addAttribute("paging", paging);
			
			return "/board/eList";
		}
		
		//게시물 조회
		@RequestMapping(value="/board/eView")
		public String view(ModelMap model, HttpServletRequest request, HttpServletResponse response) 
		{
			String cookieUserId = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
			
			//정보를 가져와야 하니까 가져와야 함.
			long eBSeq = HttpUtil.get(request, "eBSeq", (long)0);
			
			String searchType = HttpUtil.get(request, "searchType", "");
			String searchValue = HttpUtil.get(request, "searchValue", "");
			long curPage = HttpUtil.get(request, "curPage", (long)1);
			
			//본인글 여부
			String boardMe = "N";
			WDEBoard wdEBoard = null;
			
			//0보다 클 때 정상적으로 값이 넘어온 것임.
			if(eBSeq > 0) 
			{
				//wdEBoard = wdEBoardService.eBoardView(eBSeq);
				
				if(wdEBoard !=null && StringUtil.equals(wdEBoard.getAdminId(), cookieUserId)) 
				{
					boardMe = "Y";
				}
			}
			model.addAttribute("eBSeq", eBSeq);
			model.addAttribute("searchType", searchType);
			model.addAttribute("searchValue", searchValue);
			model.addAttribute("curPage", curPage);
			model.addAttribute("wdEBoard", wdEBoard);
			//수정 삭제 버튼이 나타날지 안나타날지를 판별하는 용도인 boardMe도 넘김
			model.addAttribute("boardMe", boardMe);
			
			return "/board/view";
		}
}
