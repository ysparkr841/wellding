package com.icia.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.web.dao.WDEBoardDao;
import com.icia.web.model.WDEBoard;

@Service("wdEBoardService")
public class WDEBoardService 
{
	private static Logger logger = LoggerFactory.getLogger(WDEBoardService.class);
	
	@Autowired
	private WDEBoardDao wdEBoardDao;
	
	//총 게시물 수
	public long eBoardListCount(WDEBoard wdEBoard)
	{
		long count = 0;
		
		  try
	      {
	        count = wdEBoardDao.eBoardListCount(wdEBoard);
	      }
	      catch(Exception e)
	      {
	         logger.error("[WDEBoardService] eBoardListCount Exception", e);
	      }
		
		return count;
	}
	
	//게시물 리스트
	public List<WDEBoard> eBoardList(WDEBoard wdEBoard)
	{
		List<WDEBoard> list = null;
		
		try
	      {
	         list = wdEBoardDao.eBoardList(wdEBoard);
	      }
	      catch(Exception e)
	      {
	         logger.error("[WDEBoardService] eBoardList Exception", e);
	      }
	      
	      return list;
	}
	
	//게시물 조회
	   public WDEBoard eBoardSelect(long eBSeq) 
	   {
		   WDEBoard wdEBoard = null;
		   
		   try 
		   {
			   wdEBoard = wdEBoardDao.eBoardSelect(eBSeq);
		   }
		   catch(Exception e) 
		   {
			   logger.error("[WDEBoardService] eBoardList Exception", e);
		   }
		   
		   return wdEBoard;
	   }
}
	

