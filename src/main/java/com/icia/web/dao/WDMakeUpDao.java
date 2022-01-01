package com.icia.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDMakeUp;

@Repository("WDMakeUpDao")
public interface WDMakeUpDao 
{
	//메이크업 업체 총 수 시작
	public long makeUpListCount(WDMakeUp wdMakeUp);
	
	public List<WDMakeUp> makeUpList(WDMakeUp wdMakeUp);
}
