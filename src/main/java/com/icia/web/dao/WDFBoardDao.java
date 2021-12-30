package com.icia.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDFBoard;

@Repository("wdFBoardDao")
public interface WDFBoardDao 
{
	public List<WDFBoard> fBoardList(WDFBoard wdFBoard);
	
	public int fBoardListCount(WDFBoard wdFBoard);
}
