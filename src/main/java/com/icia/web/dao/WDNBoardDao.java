package com.icia.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDNBoard;

@Repository("nBoardDao")
public interface WDNBoardDao 
{
	//게시물 총 수
	public long nBoardListCount(WDNBoard wdNBoard);
	
	//게시물 리스트 조회
	public List<WDNBoard> nBoardList(WDNBoard wdNBoard);
	
	//게시물 등록
	//public int nBoardInsert(WDNBoard wdNBoard);
	
	//게시물 조회
	public WDNBoard nBoardSelect(long bSeq);
	
	//조회수 증가
	public int nBoardReadCntPlus(long bSeq);
	
	//게시물 삭제시 답변글수 체크
	//public int nBoardAnswersCount(long bSeq);
	
	//게시물 삭제
	//public int nBoardDelete(long bSeq);
	
	//게시물 수정
	//public int nBoardUpdate(WDNBoard wdNBoard);
}
