package com.icia.web.dao;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDRez;

@Repository("wdRezDao")
public interface WDRezDao {
	
	public WDRez rezStateCheck(WDRez wdRez);
	
	public long rezNoInsert(WDRez wdRez);
	
	public long rezHallInsert(WDRez wdRez);
	
	public long rezStudioInsert(WDRez wdRez);
	
	public long rezDressInsert(WDRez wdRez);
	
	public long rezMakeupInsert(WDRez wdRez);
	
	public long rezWDateInsert(WDRez wdRez);
	
	public long rezFullPriceInsert(WDRez wdRez);
}
