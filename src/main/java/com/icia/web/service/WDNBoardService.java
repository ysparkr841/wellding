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
	
	//게시물 보기(파일 포함) 리턴타입 HiBoard
	public WDNBoard boardView(long bSeq)
	{
		WDNBoard nBoard = null;
		try
		{
			nBoard = wdNBoardDao.nBoardSelect(bSeq);
			//하이보드에 받을건데 뭘 받냐면 하이보드다오에 있는 보드샐랙트 중 hiBbsSeq를 받을거야
			//주소타고오는 애들 걸러
			if(nBoard != null)
			{
				//조회수 증가 :  카운트 받아서 처리할거없어 그래서 변수처리그런거 안하고 이프처리도 필요없어
				wdNBoardDao.nBoardReadCntPlus(bSeq);
				//하이보드파일 있으면 셀렉트할거임
			}
		}
		catch(Exception e)
		{
			logger.error("[WDNBoardService] boardView Exception", e);
		}
		
		return nBoard;
	}
	
}
