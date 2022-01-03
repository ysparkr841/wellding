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
import com.icia.web.model.WDUser;
import com.icia.web.service.WDStudioService;
import com.icia.web.service.WDUserService;
import com.icia.web.util.CookieUtil;
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

	//유저서비스
	@Autowired
	private WDUserService wdUserService;
	
	
	private static final int LIST_COUNT = 9;
	private static final int PAGE_COUNT = 3;
	
	///화면뿌리기
	@RequestMapping(value="/hsdm/studio")
	public String list(ModelMap model, HttpServletRequest request, HttpServletResponse response)
	{
		/*********상단에 닉넴 보여주기 시작*********/
		//쿠키 확인
		String cookieUserId = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
		
		//로그인 했을 때와 안했을 때를 구분해서 페이지를 보여주려 함.
		//로그인 체크용. 0 => 로그인 x, 혹은 없는 계정; 1 => 로그인 정보 있는 계정
		int loginS = 0;
		WDUser wdUser = null;
		
		if(wdUserService.wdUserIdCount(cookieUserId) >0) 
		{
			//쿠키 아이디로 된 유저 정보가 db에 존재함.
			wdUser = wdUserService.userSelect(cookieUserId);
			if(wdUser != null) 
			{
				//객체가 비어있지 않으면 보여줄 유저의 정보를 담은 객체를 넘기고, 로그인 상태에 1을 넣어줌.
				loginS = 1;
				model.addAttribute("wdUser", wdUser);
			}
		}
		else 
		{
			loginS = 0;
		}
		/**********상단에 닉넴 보여주기 끝***********/
		
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
