/**
 * <pre>
 * 프로젝트명 : HiBoard
 * 패키지명   : com.icia.web.dao
 * 파일명     : UserDao.java
 * 작성일     : 2021. 1. 19.
 * 작성자     : daekk
 * </pre>
 */
package com.icia.web.dao;

import org.springframework.stereotype.Repository;

import com.icia.web.model.User;
import com.icia.web.model.WDUser;

/**
 * <pre>
 * 패키지명   : com.icia.web.dao
 * 파일명     : UserDao.java
 * 작성일     : 2021. 1. 19.
 * 작성자     : daekk
 * 설명       : 사용자 DAO
 * </pre>
 */
@Repository("wdUserDao")
public interface WDUserDao
{
	/**
	 * <pre>
	 * 메소드명   : userInsert
	 * 작성일     : 2021. 1. 12.
	 * 작성자     : daekk
	 * 설명       : 사용자 등록
	 * </pre>
	 * @param user com.icia.web.model.User
	 * @return int
	 */
	public int userInsert(WDUser wduser);
	
	/**
	 * <pre>
	 * 메소드명   : userUpdate
	 * 작성일     : 2021. 1. 12.
	 * 작성자     : daekk
	 * 설명       : 사용자 수정
	 * </pre>
	 * @param user com.icia.web.model.User
	 * @return int
	 */
	public int userUpdate(WDUser wduser);
	
	/**
	 * <pre>
	 * 메소드명   : userStatusUpdate
	 * 작성일     : 2021. 1. 12.
	 * 작성자     : daekk
	 * 설명       : 사용자 상태 변경
	 * </pre>
	 * @param user com.icia.web.model.User
	 * @return int
	 */

	public WDUser userSelect(String userId);
}
