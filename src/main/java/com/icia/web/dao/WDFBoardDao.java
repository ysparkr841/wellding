package com.icia.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDBoardFile;
import com.icia.web.model.WDFBoard;

@Repository("wdFBoardDao")
public interface WDFBoardDao 
{
	public List<WDFBoard> fBoardList(WDFBoard wdFBoard);
	
	public long fBoardListCount(WDFBoard wdFBoard);
	
	//게시물 조회
	public WDFBoard fBoardViewSelect(long bSeq);
	
	//조회수 증가
	public long fBoardReadCntPlus(long bSeq);
	
	//게시물 첨부파일 조회
	public WDBoardFile fBoardFileSelect(long bSeq);
	
	//게시물 작성
	public int fBoardInsert(WDFBoard wdFBoard);

	//게시물 파일 첨부
	public int boardFileInsert(WDBoardFile wdBoardFile);
	
	//게시물 별도 시퀀스 조회
	public long boardSeqSelect();
	
	//게시물 삭제
	public int fBoardDelete(long bSeq);
	
	//게시물 첨부파일 삭제
	public int fBoardFileDelete(long bSeq);
}
