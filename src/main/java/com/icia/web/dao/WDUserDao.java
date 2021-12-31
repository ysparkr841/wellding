
package com.icia.web.dao;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDUser;


public interface WDUserDao
{

	public int userInsert(WDUser wduser);
	

	public int userUpdate(WDUser wduser);
	



	public WDUser userSelect(String userId);
	
	public int wdUserIdCount(String userId);
}
