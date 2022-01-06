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
import com.icia.web.model.WDReview;
import com.icia.web.model.WDUser;
import com.icia.web.service.WDReviewService;
import com.icia.web.service.WDUserService;
import com.icia.web.util.CookieUtil;
import com.icia.web.util.HttpUtil;

@Controller("WDReviewController")
public class WDReviewController {
	
	private static Logger logger= LoggerFactory.getLogger(WDReviewController.class);
	
   //쿠키명
   @Value("#{env['auth.cookie.name']}")
   private String AUTH_COOKIE_NAME;
   
   //파일저장경로
   @Value("#{env['upload.save.dir']}")
   private String UPLOAD_SAVE_DIR;
   
   @Autowired
   private WDReviewService wdReviewService;
   
   @Autowired
   private WDUserService wdUserService;
   
   private static final int LIST_COUNT = 10;    //한페이지의 게시물 수
   private static final int PAGE_COUNT = 5;      //페이징 수
   

   @RequestMapping(value = "/board/reviews")
   public String review(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
	   
		  //조회값
		  String searchValue = HttpUtil.get(request, "searchValue", "");
		  //현재페이지
		  long curPage = HttpUtil.get(request, "curPage", (long)1);
		  
		String cookieUserId = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
		WDUser wdUser = wdUserService.userSelect(cookieUserId);
		  
		  List<WDReview> list = null;
		  WDReview wdReview = new WDReview();
		  long totalCount = 0;
		  
		  Paging paging = null;
		  
		  if(!StringUtil.isEmpty(searchValue)) {
			  wdReview.setSearchValue(searchValue);
		  }
		  
		  totalCount = wdReviewService.ReviewListCount(wdReview);
		  
		logger.debug("[totalCount] = "+totalCount);
		
		if(totalCount > 0) {
			paging = new Paging("/board/fboard", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage");
			paging.addParam("searchValue",searchValue);
			paging.addParam("curPage", curPage);
			
			wdReview.setStartRow(paging.getStartRow());
			wdReview.setEndRow(paging.getEndRow());
			
			list = wdReviewService.ReviewList(wdReview);
		}
		model.addAttribute("list",list);
		model.addAttribute("searchValue", searchValue);
		model.addAttribute("curPage", curPage);
		model.addAttribute("paging", paging);
		model.addAttribute("wdUser", wdUser);
	   
	   return "/board/reviews";
   }

}
