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
	   
	   private static final int LIST_COUNT = 5; //한 페이지의 게시물 수
	   private static final int PAGE_COUNT = 5; //페이징 수
	   
	   @RequestMapping(value="/hsdm/WDHallList")
	   public String list(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		   
		   String WHCode = HttpUtil.get(request, "WHCode", "");
		   long curPage = HttpUtil.get(request, "curPage", (long)1);
		   
		   long totalCount = 0;
		   List<WDHall> list = null;
		   
		   Paging paging = null;
		   
		   WDHall wdHall = new WDHall();
		   wdHall.setWHCode(WHCode);
		   
		   totalCount = wdHallService.WDHallListCount(wdHall);
		   
		   if(totalCount > 0) {
			   paging = new Paging("/board/list", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage"); //페이징처리 : 인수값이 있다 = 생성자가 있다
			   
			   paging.addParam("curPage", curPage);
			   
			   list = wdHallService.WDHallList(wdHall);
		   }
		   
		   model.addAttribute("list",list);
		   model.addAttribute("curPage",curPage);
		   model.addAttribute("paging", paging);
		   
		   return "/hsdm/WDHallList";
	   }
}
