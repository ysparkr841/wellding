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
import com.icia.web.service.WDReviewService;
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
   
   private static final int LIST_COUNT = 10;    //한페이지의 게시물 수
   private static final int PAGE_COUNT = 5;      //페이징 수
   
   @RequestMapping(value = "/board/reviewList")
   public String reviewList(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
	   
	   //조회항목 (1:제목, 2:내용)
	   String searchType = HttpUtil.get(request, "searchType");
	  //조회값
	  String searchValue = HttpUtil.get(request, "searchValue");
	  //현재페이지
	  long curPage = HttpUtil.get(request, "curPage", (long)1);
	  
	  long totalCount = 0;
	 
	   
	   return "/board/reviewList";
   }
   @RequestMapping(value = "/board/reviews")
   public String review(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
	   
	   return "/board/reviews";
   }

}
