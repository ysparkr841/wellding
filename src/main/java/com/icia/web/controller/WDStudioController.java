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
import com.icia.web.model.WDStudio;
import com.icia.web.service.WDStudioService;
import com.icia.web.util.HttpUtil;

@Controller("WDStudioController")
public class WDStudioController 
{
	private static Logger logger= LoggerFactory.getLogger(WDStudioController.class);

	//쿠키명
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	//파일저장경로
	@Value("#{env['upload.save.dir']}")
	private String UPLOAD_SAVE_DIR;
	
	@Autowired
	private WDStudioService wdStudioService;
	
	
	private static final int LIST_COUNT = 9;
	private static final int PAGE_COUNT = 10;
	
	///화면뿌리기
	@RequestMapping(value="/hsdm/studio")
	public String list(ModelMap model, HttpServletRequest request, HttpServletResponse response)
	{
		//조회항목(1:스튜디오명, 2:지역)
		String searchType = HttpUtil.get(request, "searchType", "");
		//조회값
		String searchValue = HttpUtil.get(request, "searchValue", "");
		//현재페이지
		long curPage = HttpUtil.get(request, "curPage", (long)1);
		String sCode = HttpUtil.get(request, "sCode", "");
		
		long totalCount = 0;
		List<WDStudio> list = null;
		
		//페이징객체
		Paging paging = null;
		//조회객체
		WDStudio wdStudio = new WDStudio();
		
		//매개변수로 받은 값이 정상적으로 넘어왔는지 체크
		if(!StringUtil.isEmpty(searchType) && !StringUtil.isEmpty(searchValue))
		{
			//값이있으면 메소드 호출하기
			wdStudio.setSearchType(searchType);
			wdStudio.setSearchValue(searchValue);
		}
		else
		{
			//공백일때는 초기값 널로하기!
			searchType="";
			searchValue="";
		}
		
		wdStudio.setsCode(sCode);
		
		totalCount = wdStudioService.studioListCount(wdStudio);
		logger.debug("totalCount : " + totalCount);
		
		if(totalCount > 0)
		{
			//리스트값 + 페이징처리
			paging = new Paging("/hsdm/studio", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage");//페이징처리
			
			paging.addParam("searchType", searchType);
			paging.addParam("searchValue", searchValue);
			paging.addParam("curPage", curPage);
			
			wdStudio.setStartRow(paging.getStartRow());
			wdStudio.setEndRow(paging.getEndRow());
			
			list = wdStudioService.studioList(wdStudio);
		}
		
		model.addAttribute("list", list);
	    model.addAttribute("searchType", searchType);
	    model.addAttribute("searchValue", searchValue);
	    model.addAttribute("curPage", curPage);
	    model.addAttribute("paging", paging);
		
	    
		return "/hsdm/studio";
	}
	
	
	
	
}
