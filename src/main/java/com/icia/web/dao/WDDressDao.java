package com.icia.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDDress;

@Repository("WDDressDao")
public interface WDDressDao 
{
	//리스트 조회
	public List<WDDress> dressList(WDDress wdDress);
	
	//게시물 총 수
	public long dressListCount(WDDress wdDress);
	
	//조회
	public WDDress dressSelect(String dNo);
	
	//동일 회사 드레스 조회, 동일제품은 제외
	public List<WDDress> dressSameCom(WDDress wdDress);
	
}
