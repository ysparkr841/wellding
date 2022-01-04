package com.icia.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDEBoard;

@Repository("eBoardDao")
public interface WDEBoardDao 
{
	//게시물 리스트
	public List<WDEBoard> eBoardList(WDEBoard wdEBoard);
	
	//게시물 총 수
	public long eBoardListCount(WDEBoard wdEBoard);
	
	//게시물 조회
	public WDEBoard eBoardSelect(long eBSeq);
	
	//게시물 조회수 증가
	public long eBoardReadCntPlus(long eBSeq);
}
