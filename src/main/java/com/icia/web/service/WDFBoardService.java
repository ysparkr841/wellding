package com.icia.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.web.dao.WDFBoardDao;
import com.icia.web.model.WDFBoard;

@Service("wdFBoardService")
public class WDFBoardService 
{
	private static Logger logger = LoggerFactory.getLogger(WDFBoardService.class);
	
	@Autowired
	private WDFBoardDao wdFBoardDao;
	
	//총 게시물 수 확인
	public long fBoardListCount(WDFBoard wdFBoard) 
	{
		long count = 0;
		
		try 
		{
			count = wdFBoardDao.fBoardListCount(wdFBoard);
		}
		catch(Exception e) 
		{
			logger.error("[WDFBoardService] fBoardListCount Exception", e);
		}
		
		return count;
	}
	
	public List<WDFBoard> fBoardList(WDFBoard wdFBoard)
	{
		List<WDFBoard> list = null;
		
		try 
		{
			list = wdFBoardDao.fBoardList(wdFBoard);
		}
		catch(Exception e) 
		{
			logger.error("[WDFBoardService] fBoardList Exception", e);
		}
		
		return list;
	}
	
}
