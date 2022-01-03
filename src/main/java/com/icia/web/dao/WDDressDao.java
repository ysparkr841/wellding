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
	
<<<<<<< HEAD
	//조회 >> 해당업체 다른 디자인 보기
	public WDDress AnotherDress(String dNo);
=======
	//동일 회사 드레스 조회, 동일제품은 제외
	public List<WDDress> dressSameCom(WDDress wdDress);
>>>>>>> 89362fcf33e87bb8c5164d382a649cb618e3ba52
	
}
