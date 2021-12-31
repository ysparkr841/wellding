package com.icia.web.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.web.dao.WDUserDao;
import com.icia.web.model.WDUser;

@Service("WDUserService")
public class WDUserService 
{
	private static Logger logger = LoggerFactory.getLogger(WDUserService.class);

	
	@Autowired
	private WDUserDao wdUserDao;
	
	//유저 정보 가져오기.
	public WDUser userSelect(String userId)
	{
		WDUser wduser = null;
		
		try
		{
			wduser = wdUserDao.userSelect(userId);
		}
		catch(Exception e)
		{
			logger.error("[WDUserService] 오류 userSelect Exception", e );
		}
		
		return wduser;
		
	}
	
	//사용자 등록
	public int userInsert(WDUser wduser)
	{
		int count = 0;
		
		try
		{
			count = wdUserDao.userInsert(wduser);
		}
		catch(Exception e)
		{
			logger.error("[WDUserService] 오류 userInsert Exception", e );
		}
		
		return count;
	}
	
	//사용자 수정
	public int userUpdate(WDUser wduser)
	{
		int count = 0;
		
		try
		{
			count = wdUserDao.userUpdate(wduser);
		}
		catch(Exception e)
		{
			logger.error("[WDUserService] 오류 userUpdate Exception", e );
		}
		
		return count;
	}
	
	//아이디 존재 여부 확인
	public int wdUserIdCount(String userId) 
	{
		int count = 0;
		
		try 
		{
			count = wdUserDao.wdUserIdCount(userId);
		}
		catch(Exception e) 
		{
			logger.error("[WDUserService] 오류 wdUserIdCount Exception",e);
		}
		
		return count;
	}
	
}
