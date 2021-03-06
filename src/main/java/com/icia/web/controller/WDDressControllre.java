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
import com.icia.web.model.WDUser;
import com.icia.web.service.WDDressService;
import com.icia.web.service.WDUserService;
import com.icia.web.util.CookieUtil;
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
	
	//유저서비스
	@Autowired
	private WDUserService wdUserService;
	
	private static final int LIST_COUNT = 9;
	private static final int PAGE_COUNT = 3;
	
	///화면에 뿌리기
	@RequestMapping(value="/hsdm/dress")
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
	
	
	//22.01.03 상세페이지 보기
	@RequestMapping(value="/hsdm/dressView")
	public String view(ModelMap model, HttpServletRequest request, HttpServletResponse response)
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
		 
		//상세페이지에 필요한거 가져오기
		String dcCode = HttpUtil.get(request, "dcCode", "");
		String dNo = HttpUtil.get(request, "dNo", ""); 
		String searchType = HttpUtil.get(request, "searchType", ""); 
		String searchValue = HttpUtil.get(request, "searchValue", ""); 
		long curPage = HttpUtil.get(request, "curPage", (long)1);
		
		WDDress wdDress = null; //내가 선택한 드레스 상세보기
		List<WDDress> sameCom = null; //같은업체의 다른드레스 보기
		
		if(dNo != null)
		{
			wdDress = wdDressService.dressSelect(dNo);
		
			//의수 추가
			//같은 회사 상품 가져오기
			WDDress search = new WDDress();
			//같은 회사 코드를 조건으로 검색하기 위해서 값 세팅
			search.setDcCode(wdDress.getDcCode());
			//같은 회사지만 같은 드레스라면 검색이 안되게 하기 위한 값 세팅
			search.setdNo(wdDress.getdNo());
			
			sameCom = wdDressService.dressSameCom(search);
			//의수 추가 종료
		}
		
		model.addAttribute("dNo", dNo);
		model.addAttribute("wdDress", wdDress);
		model.addAttribute("dcCode", dcCode);
		model.addAttribute("searchType", searchType);
		model.addAttribute("searchValue", searchValue);
		model.addAttribute("curPage", curPage);
		
		//의수 추가
		model.addAttribute("sameCom", sameCom);
		//의수 추가 종료
		return "/hsdm/dressView";
	}
	
	
	
}
