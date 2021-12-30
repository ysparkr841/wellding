package com.icia.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.web.dao.WDNBoardDao;
import com.icia.web.model.WDNBoard;

@Service("nBoardService")
public class WDNBoardService 
{
	private static Logger logger = LoggerFactory.getLogger(WDNBoardService.class);
	
	@Autowired
	private WDNBoardDao wdNBoardDao; 
	
	//총 게시물 수
	public long nBoardListCount(WDNBoard wdNBoard)
	{
		long count = 0;
		
		try
		{
			count = wdNBoardDao.nBoardListCount(wdNBoard);
		}
		catch(Exception e)
		{
			logger.error("[WDNBoardService] nBoardListCount Exception", e);
		}
		
		return count;
	}
	
	//게시물 리스트
	public List<WDNBoard> nBoardList(WDNBoard wdNBoard)
	{
		List<WDNBoard> list = null;
		
		try
		{
			list = wdNBoardDao.nBoardList(wdNBoard);
		}
		catch(Exception e)
		{
			logger.error("[WDNBoardService] nBoardList Exception", e);
		}
		
		return list;
	}
	
	//게시물 조회
	public WDNBoard nBoardSelect(long bSeq)
	{//한건만 조회하기 때문에 리턴타입은 WDNBoard
		WDNBoard wdNBoard = null;
		
		try
		{
			wdNBoard = wdNBoardDao.nBoardSelect(bSeq);
		}
		catch(Exception e)
		{
			logger.error("[WDNBoardService] nBoardSelect Exception", e);
		}
		
		return wdNBoard;
	}
	
	
}
