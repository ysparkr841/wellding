package com.icia.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.icia.common.util.StringUtil;
import com.icia.web.model.Paging;
import com.icia.web.model.WDMakeUp;
import com.icia.web.service.WDMakeUpService;
import com.icia.web.util.HttpUtil;

public class WDMakeUpController 
{
	private static Logger logger= LoggerFactory.getLogger(WDMakeUpController.class);
	
	//쿠키명
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	//파일저장경로
	@Value("#{env['upload.save.dir']}")
	private String UPLOAD_SAVE_DIR;
	
	@Autowired
	private WDMakeUpService wdMakeUpService;
	
	private static final int LIST_COUNT = 9;
	private static final int PAGE_COUNT = 10;
	
	//메이크업 업체 불러와서 화면에 보여주는 메소드
	@RequestMapping(value="/hsdm/makeUp")
	public String makeUpList(ModelMap model, HttpServletRequest request, HttpServletResponse response) 
	{
		String searchType = HttpUtil.get(request, "searchType", "");
		String searchValue = HttpUtil.get(request, "searchValue", "");
		long curPage = HttpUtil.get(request, "curPage", (long)1);
		
		String mCode = HttpUtil.get(request, "mCode", "");
		
		long totalCount = 0;
		
		List<WDMakeUp> list = null;
		
		Paging paging = null;
		
		WDMakeUp search = new WDMakeUp();
		
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
		
		totalCount = wdMakeUpService.makeUpListCount(search);
		
		logger.debug("============totalCount : "+ totalCount + "===========================");
		
		if(totalCount > 0) 
		{
			paging = new Paging("/hsdm/makeUp", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage");
			
			paging.addParam("searchType" ,searchType);
			paging.addParam("searchValue", searchValue);
			paging.addParam("curPage", curPage);
			
			search.setStartRow(paging.getStartRow());
			search.setEndRow(paging.getEndRow());
			
			list = wdMakeUpService.makeUpList(search);
		}
		
		model.addAttribute("list", list);
		model.addAttribute("searchType", searchType);
		model.addAttribute("searchValue", searchValue);
		model.addAttribute("curPage", curPage);
		model.addAttribute("paging", paging);
		
		return "/hsdm/makeUp";
	}
	
}
