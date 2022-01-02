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
import com.icia.web.model.WDDress;
import com.icia.web.service.WDDressService;
import com.icia.web.util.HttpUtil;

@Controller("WDDressController")
public class WDDressControllre 
{
	private static Logger logger = LoggerFactory.getLogger(WDDressControllre.class);
	
	//쿠키명
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	//파일저장경로
	@Value("#{env['upload.save.dir']}")
	private String UPLOAD_SAVE_DIR;
	
	@Autowired
	private WDDressService wdDressService;
	
	private static final int LIST_COUNT = 9;
	private static final int PAGE_COUNT = 3;
	
	///화면에 뿌리기
	@RequestMapping(value="/hsdm/dress")
	public String list(ModelMap model, HttpServletRequest request, HttpServletResponse response)
	{
		//조회항목(1:드레스샵명, 2:지역)
		String searchType = HttpUtil.get(request, "searchType", "");
		//조회값
		String searchValue = HttpUtil.get(request, "searchValue", "");
		//현재페이지
		long curPage = HttpUtil.get(request, "curPage", (long)1);
		//String dcCode = HttpUtil.get(request, "dcCode", "");
		
		long totalCount = 0;
		List<WDDress> list = null;
		
		//페이징객체
		Paging paging = null;
		//조회객체
		WDDress wdDress = new WDDress();
		
		//값이 잘 넘어왔는지 체크하자
		if(!StringUtil.isEmpty(searchType) && !StringUtil.isEmpty(searchValue))
		{
			wdDress.setSearchType(searchType);
			wdDress.setSearchValue(searchValue);
		}
		else
		{
			//값이없으면 공백으로 넣으셔
			searchType = "";
			searchValue = "";
		}
		
		//wdDress.setDcCode(dcCode);
		
		totalCount = wdDressService.dressListCount(wdDress);
		logger.debug("totalCount : " + totalCount);
		
		if(totalCount > 0)
		{
			//값이 있으면 리스트값뿌리고 페이징처리 ㄱㄱ
			paging = new Paging("/hsdm/dress", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage");
			
			paging.addParam("searchType", searchType);
			paging.addParam("searchValue", searchValue);
			paging.addParam("curPage", curPage);
			
			wdDress.setStartRow(paging.getStartRow());
			wdDress.setEndRow(paging.getEndRow());
			
			list = wdDressService.dressList(wdDress);
		}
		
		model.addAttribute("list", list);
	    model.addAttribute("searchType", searchType);
	    model.addAttribute("searchValue", searchValue);
	    model.addAttribute("curPage", curPage);
	    model.addAttribute("paging", paging);
	    
		return "/hsdm/dress";
	}
}
