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
import com.icia.web.model.WDHall;
import com.icia.web.service.WDHallService;
import com.icia.web.util.HttpUtil;

@Controller("WDHallController")
public class WDHallController {
	
	private static Logger logger= LoggerFactory.getLogger(WDHallController.class);
	
	   //쿠키명
	   @Value("#{env['auth.cookie.name']}")
	   private String AUTH_COOKIE_NAME;
	   
	   //파일저장경로
	   @Value("#{env['upload.save.dir']}")
	   private String UPLOAD_SAVE_DIR;
	   
	   @Autowired
	   private WDHallService wdHallService;
	   
	   private static final int LIST_COUNT = 9; //한 페이지의 게시물 수
	   private static final int PAGE_COUNT = 5; //페이징 수
	   
	   @RequestMapping(value="/hsdm/halllist")
	   public String list(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		   
			//조회항목(1:작성자, 2:제목, 3:내용)
			String searchType = HttpUtil.get(request, "searchType", "");
			//조회값
			String searchValue = HttpUtil.get(request, "searchValue", "");
			//현재 페이지
			long curPage = HttpUtil.get(request, "curPage", (long)1);
			String whCode = HttpUtil.get(request, "whCode", "");
		   
		   long totalCount = 0;
		   List<WDHall> list = null;
		   
		   
		   Paging paging = null;
		   WDHall wdHall = new WDHall();
		   
			if(!StringUtil.isEmpty(searchType) && !StringUtil.isEmpty(searchValue))
			{
				wdHall.setSearchType(searchType);
				wdHall.setSearchValue(searchValue);
			}
			else
			{
				searchType = "";
				searchValue = "";
			}
			
		   wdHall.setWHCode(whCode);
		   
		   totalCount = wdHallService.WDHallListCount(wdHall);
		   
		   logger.debug("totalCount : " + totalCount);
		   
		   if(totalCount > 0) {
			   paging = new Paging("/hsdm/halllist", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage"); //페이징처리 : 인수값이 있다 = 생성자가 있다
			   
				paging.addParam("searchType", searchType);
				paging.addParam("searchValue", searchValue);
				paging.addParam("curPage", curPage);
				
				wdHall.setStartRow(paging.getStartRow());
				wdHall.setEndRow(paging.getEndRow());
			   
			   list = wdHallService.WDHallList(wdHall);
		   }
		   
			model.addAttribute("list", list);
			model.addAttribute("searchType", searchType);
			model.addAttribute("searchValue", searchValue);
			model.addAttribute("curPage", curPage);
			model.addAttribute("paging",paging);
		   
		   return "/hsdm/halllist";
	   }
}
