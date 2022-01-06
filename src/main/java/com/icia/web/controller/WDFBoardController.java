package com.icia.web.controller;

import java.io.File;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.icia.common.model.FileData;
import com.icia.common.util.FileUtil;
import com.icia.common.util.StringUtil;
import com.icia.web.model.Paging;
import com.icia.web.model.Response;
import com.icia.web.model.WDBoardFile;
import com.icia.web.model.WDComment;
import com.icia.web.model.WDFBoard;
import com.icia.web.model.WDUser;
import com.icia.web.service.WDCommentService;
import com.icia.web.service.WDFBoardService;
import com.icia.web.service.WDUserService;
import com.icia.web.util.CookieUtil;
import com.icia.web.util.HttpUtil;

@Controller("wdFBoardController")
public class WDFBoardController 
{
	private static Logger logger = LoggerFactory.getLogger(WDFBoardController.class);
	
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	@Autowired
	private WDFBoardService wdFBoardService;
	
	@Autowired
	private WDUserService wdUserService;
	
	@Autowired
	private WDCommentService wdCommentService;
	
	//파일 저장경로
	@Value("#{env['upload.save.dir']}")
	private String UPLOAD_SAVE_DIR;
	
	private static final int LIST_COUNT = 20;
	private static final int PAGE_COUNT = 5;
	
	@RequestMapping(value="/board/fBoard")
	public String list(ModelMap model, HttpServletRequest request, HttpServletResponse response) 
	{
		String searchType = HttpUtil.get(request, "searchType", "");
		String searchValue = HttpUtil.get(request, "searchValue", "");
		long curPage = HttpUtil.get(request, "curPage", (long)1);
		String cookieUserId = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
		
		
		WDUser wdUser = wdUserService.userSelect(cookieUserId);
		
		long totalCount = 0;
		List<WDFBoard> list = null;
		
		//페이징 객체
		Paging paging = null;
		
		WDFBoard search = new WDFBoard();
		
		if(!StringUtil.isEmpty(searchType) && !StringUtil.isEmpty(searchValue)) 
		{
			//받아온 값
			search.setSearchType(searchType);
			search.setSearchValue(searchValue);
		}
		else 
		{
			searchType = "";
			searchValue = "";
		}
		
		//페이징 처리를 위한 totalCount, 그리고 값이 있어야 가져오니까, 풀스캔 안하는 용도도 있음.
		totalCount = wdFBoardService.fBoardListCount(search);
		
		logger.debug("[totalCount] = "+totalCount);
		
		if(totalCount > 0) 
		{
			paging = new Paging("/board/fboard", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage");
			paging.addParam("searchType", searchType);
			paging.addParam("searchValue", searchValue);
			paging.addParam("curPage", curPage);
			
			search.setStartRow(paging.getStartRow());
			search.setEndRow(paging.getEndRow());
			
			list = wdFBoardService.fBoardList(search);
		}
		
		model.addAttribute("list", list);
		model.addAttribute("searchType", searchType);
		model.addAttribute("searchValue", searchValue);
		model.addAttribute("curPage", curPage);
		model.addAttribute("paging", paging);
		model.addAttribute("wdUser", wdUser);
		
		return "/board/fBoard";
	}
	
	
	//작성페이지
	@RequestMapping(value="/board/fBoardWrite", method=RequestMethod.POST)
	public String fBoardWrite(ModelMap model, HttpServletRequest request, HttpServletResponse response) 
	{
		//쿠키 값
		String cookieUserId = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
		
		//글 쓰고 돌아갈 때 서치타입 벨류 현재페이지 세팅이 필요함
		String searchType = HttpUtil.get(request, "searchType", "");
		String searchValue = HttpUtil.get(request, "searchValue", "");
		long curPage = HttpUtil.get(request, "curPage", (long)1);		
		
		WDUser wdUser = wdUserService.userSelect(cookieUserId);
		
		model.addAttribute("searchType", searchType);
		model.addAttribute("searchValue", searchValue);
		model.addAttribute("curPage", curPage);
		
		model.addAttribute("wdUser", wdUser);
		
		return "/board/fBoardWrite";
	}
	
	
	
	//상세 뷰페이지
	@RequestMapping(value="/board/fBoardView")
	public String fBoardView(ModelMap model, HttpServletRequest request, HttpServletResponse response) 
	{
		String cookieUserId = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
		
		long bSeq = HttpUtil.get(request, "bSeq", (long)0);
		String searchType = HttpUtil.get(request, "searchType", "");
		String searchValue = HttpUtil.get(request, "searchValue", "");
		long curPage = HttpUtil.get(request, "curPage", (long)1);
		
		String boardMe = "N";
		WDFBoard wdFBoard = null;
		
		//댓글 리스트 객체
		List<WDComment> commentList = null;
		WDComment wdComment = new WDComment();
		
		int maxComment = 0;
		
		if(bSeq > 0) 
		{
			
			wdFBoard = wdFBoardService.wdFBoardView(bSeq);
			
			if(wdFBoard != null && StringUtil.equals(wdFBoard.getUserId(), cookieUserId)) 
			{
				boardMe = "Y";
			}
			commentList = wdCommentService.commentList(bSeq);
			maxComment = wdCommentService.WDCommentMax(bSeq);
			
			model.addAttribute("commentList",commentList);
			model.addAttribute("maxComment",maxComment);
		}
		
		if(wdFBoard.getWdBoardFile() != null) 
		{
			String url = wdFBoard.getWdBoardFile().getFileName();
			model.addAttribute("url", url);
		}
		
		WDUser wdUser = wdUserService.userSelect(cookieUserId);
		
		model.addAttribute("wdUser", wdUser);
		
		model.addAttribute("bSeq", bSeq);
		model.addAttribute("searchType", searchType);
		model.addAttribute("searchValue", searchValue);
		model.addAttribute("curPage", curPage);
		model.addAttribute("wdFBoard", wdFBoard);
		model.addAttribute("boardMe", boardMe);
		
		return "/board/fBoardView";
	}
	
	
	
	//게시물 작성
	@RequestMapping(value="/board/writeProc", method=RequestMethod.POST)
	@ResponseBody
	public Response<Object> writeProc(MultipartHttpServletRequest request, HttpServletResponse response)
	{
		Response<Object> ajaxResponse = new Response<Object>();
		
		String cookieUserId = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
		String hiBbsTitle = HttpUtil.get(request, "hiBbsTitle", "");
		String hiBbsContent = HttpUtil.get(request, "hiBbsContent", "");
		
		
		FileData fileData = HttpUtil.getFile(request, "hiBbsFile", UPLOAD_SAVE_DIR);
		
		if(!StringUtil.isEmpty(hiBbsTitle) && !StringUtil.isEmpty(hiBbsContent)) 
		{
			WDFBoard wdFBoard = new WDFBoard();
			wdFBoard.setUserId(cookieUserId);
			wdFBoard.setbTitle(hiBbsTitle);
			wdFBoard.setbContent(hiBbsContent);
			
			if(fileData != null && fileData.getFileSize() >0 ) 
			{
				WDBoardFile wdBoardFile = new WDBoardFile();
				
				wdBoardFile.setFileName(fileData.getFileName());
				wdBoardFile.setFileOrgName(fileData.getFileOrgName());
				wdBoardFile.setFileExt(fileData.getFileExt());
				wdBoardFile.setFileSize(fileData.getFileSize());
				
				wdFBoard.setWdBoardFile(wdBoardFile);
			}
			
		
		
		
			try 
			{
				if(wdFBoardService.boardInsert(wdFBoard) > 0) 
				{
					ajaxResponse.setResponse(0, "Success");
				}
				else 
				{
					ajaxResponse.setResponse(500, "Internal Server Error");
				}
			}
			catch(Exception e) 
			{
				logger.error("[WDFBoardController] /board/writeProc Exception", e);
				ajaxResponse.setResponse(500, "Internal Server Error");
			}
		
		}
		else 
		{
			ajaxResponse.setResponse(400, "Bad Request: No parameter");
		}
		
		return ajaxResponse;
	}
	
	
	//게시글 삭제
	@RequestMapping(value="/board/delete", method=RequestMethod.POST)
	@ResponseBody
	public Response<Object> delete(HttpServletRequest request, HttpServletResponse response)
	{
		Response<Object> ajaxResponse = new Response<Object>();
		
		String cookieUserId =  CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
		long bSeq = HttpUtil.get(request, "bSeq", (long)0);
		
		if(bSeq > 0) 
		{
			WDFBoard wdFBoard = wdFBoardService.wdFBoardView(bSeq);
			if(wdFBoard != null) 
			{
				
				if(StringUtil.equals(wdFBoard.getUserId(), cookieUserId)) 
				{
					try 
					{
						if(wdFBoardService.fBoardDelete(bSeq) > 0) 
						{
							ajaxResponse.setResponse(0, "Success");
						}
						else 
						{
							ajaxResponse.setResponse(500, "Internal Server Error");
						}
					}
					catch(Exception e) 
					{
						logger.error("[WDFBoardController] delete Exception", e);
						ajaxResponse.setResponse(500, "Internal Server Error");
					}
				}
				else 
				{
					ajaxResponse.setResponse(405, "User Error");					
				}
			}
			else 
			{
				ajaxResponse.setResponse(404, "Not Exist");				
			}
			
		}
		else 
		{
			ajaxResponse.setResponse(400, "Bad Request");
		}
		
		return ajaxResponse;
	}
	
	//첨부파일 다운로드
	@RequestMapping("/board/download")
	public ModelAndView download(HttpServletRequest request, HttpServletResponse response) 
	{
		ModelAndView modelAndView = null;
		
		long bSeq = HttpUtil.get(request, "bSeq", (long)0);
		
		if(bSeq >0) 
		{
			//값이 넘어왔다는 뜻
			WDBoardFile wdBoardFile = wdFBoardService.fBoardFileSelect(bSeq);
			
			if(wdBoardFile != null && wdBoardFile.getFileSize() > 0)
			{
				//파일이 존재하면
				//자바에서 제공하는 File객체라서 java.io임
				File file = new File(UPLOAD_SAVE_DIR + FileUtil.getFileSeparator()+wdBoardFile.getFileName());
				
				logger.debug("UPLOAD_SAVE_DIR : "+ UPLOAD_SAVE_DIR);
				//os버전에 따라서 슬래쉬 혹은 역슬래쉬 해주는 기능이 getFIleSeparator()임
				logger.debug("FileUtil.getFileSeparator() : "+ FileUtil.getFileSeparator());
				logger.debug("hiBoardFile.getFileName() : "+ wdBoardFile.getFileName());

				if(FileUtil.isFile(file)) 
				{
					//파일유틸에서 파일이 존재하는지 확인
					modelAndView = new ModelAndView();
					
					//어떤 클래스를 참조할 것이냐?
					modelAndView.setViewName("fileDownloadView"); //servlet-context.xml 에서 정의한 것(fileDownloadView)
					
					
					modelAndView.addObject("file", file);
					modelAndView.addObject("fileName", wdBoardFile.getFileOrgName());
					
					return modelAndView;
				}
			}
		}
		
		return modelAndView;
	}
	
	//게시물 댓글 등록
	   @RequestMapping(value="/board/CommentProc", method=RequestMethod.POST)
	   @ResponseBody
	   public Response<Object> CommentProc(HttpServletRequest request, HttpServletResponse response){
		   Response<Object> ajaxResponse = new Response<Object>();
		   String cookieUserId = CookieUtil.getHexValue(request, AUTH_COOKIE_NAME);
		   long bSeq = HttpUtil.get(request, "bSeq", (long)0);
		   String wdFBoardComment = HttpUtil.get(request, "wdFBoardComment", "");
		   
		   WDComment wdComment = new WDComment();
		   WDUser wdUser = null;

		   if(bSeq > 0 && !StringUtil.isEmpty(wdFBoardComment)) {
			   WDFBoard wdFBoard = wdFBoardService.wdFBoardView(bSeq);
			   if(wdFBoard != null) {
				   int maxcomment = wdCommentService.WDCommentMax(wdFBoard.getbSeq());
				   wdUser = wdUserService.userSelect(cookieUserId);
				  
				   wdComment.setParentSeq(wdFBoard.getbSeq());
				   wdComment.setCommentSeq(maxcomment+1);
				   wdComment.setUserId(cookieUserId);
				   wdComment.setuNickName(wdUser.getUserNickname());
				   wdComment.setuEmail(wdUser.getUserEmail());
				   wdComment.setWdFBoardComment(wdFBoardComment);
				   
				   if(wdCommentService.WDCommentInsert(wdComment) > 0) {
					   ajaxResponse.setResponse(0, "Success");
				   }
				   else {
					   ajaxResponse.setResponse(500, "Internal Server Error");
				   }				   
			   }
			   else {
				   	//계정이 없음
		            ajaxResponse.setResponse(404, "Not Found");
			   }
		   }
		   else {
			   //파라미터값 잘못된 경우
			   ajaxResponse.setResponse(400, "Bad Request");
		   }
		   
		   return ajaxResponse;
	   }	
	
}
