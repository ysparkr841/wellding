package com.icia.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDStudio;

@Repository("WDStudioDao")
public interface WDStudioDao 
{
	//게시물 총 수
	public long studioListCount(WDStudio wdStudio);
	
	//게시물 리스트 조회
	public List<WDStudio> studioList(WDStudio wdStudio);
	
	//상세보기
	public WDStudio studioSelect(String sCode);
	
}
