package com.icia.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.web.dao.WDHallDao;
import com.icia.web.model.WDHall;
import com.icia.web.model.WDHallFile;

@Service("WDHallService")
public class WDHallService {
	
	private static Logger logger = LoggerFactory.getLogger(WDHallService.class);
	
	@Autowired
	private WDHallDao wdHallDao;
	
	//랭킹은 인덱스 컨트롤러에서 불러오자!!
	public List<WDHall> WDHallRanking(){
		
		List<WDHall> list = null;
		
		try 
		{
				list = wdHallDao.WDHallRanking();
		}
		catch(Exception e) 
		{
			logger.error("[HallService] WDHallRanking Exception : ", e);
		}		
		
		return list;
	}
	
	public WDHall WDHallSelect(WDHall wdHall) {
		
		try {
			wdHall = wdHallDao.WDHallSelect(wdHall);
		}
		catch(Exception e) {
			logger.error("[HallService] WDHallSelect Exception : ", e);
		}
		
		return wdHall;
	}
	
	public WDHallFile WDHallFileSelect(WDHallFile wdHallFile) {
		
		try {
			wdHallFile = wdHallDao.WDHallFileSelect(wdHallFile);
			
		}
		catch(Exception e) {
			logger.error("[HallService] WDHallFileSelect Exception : ", e);
		}
		
		return wdHallFile;
	}
	
	public List<WDHall> WDHallList(WDHall wdHall){
		
		List<WDHall> list = null;
		
		try {
			list = wdHallDao.WDHallList(wdHall);
		}
		catch(Exception e) {
			logger.error("[HallService] WDHallList Exception : ", e);
		}
		return list;
	}
	
	public long WDHallListCount(WDHall wdHall) {
		
		long count = 0;
		
		try {
			count = wdHallDao.WDHallListCount(wdHall);
		}
		catch(Exception e) {
			logger.error("[HallService] WDHallListCount Exception : ", e);
		}
		
		return count;
	}
	

}
