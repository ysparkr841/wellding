package com.icia.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.web.dao.WDRezDao;
import com.icia.web.model.WDRez;

@Service ("wdRezService")
public class WDRezService {

	private static Logger logger = LoggerFactory.getLogger(WDRezService.class);
	
	@Autowired
	private WDRezDao wdRezDao;
	
	//예약 게시물 총 수 
	public long rezListCount(WDRez wdRez)
	{
		long count = 0;
		
		try
		{
			count = wdRezDao.rezListCount(wdRez);
		}
		catch(Exception e)
		{
			logger.error("[WDRezService] rezListCount Exception", e);
		}
		return count;
	}
	
	//예약 게시물 조회
	public WDRez rezList(String userId)
	{
		WDRez wdRez = null;
		
		try
		{
			wdRez = wdRezDao.rezList(userId);
		}
		catch(Exception e)
		{
			logger.error("[WDRezService] rezList Exception", e);
		}
		return wdRez;
	}
}
