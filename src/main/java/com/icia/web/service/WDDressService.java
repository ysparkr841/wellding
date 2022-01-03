package com.icia.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.icia.web.dao.WDDressDao;
import com.icia.web.model.WDDress;

@Service("WDDressService")
public class WDDressService 
{
	private static Logger logger = LoggerFactory.getLogger(WDDressService.class);
	
	@Autowired
	private WDDressDao wdDressDao;
	
	//파일저장 디렉토리
	@Value("#{env['upload.save.dir']}")
	private String UPLOAD_SAVE_DIR;
	
	//총 게시물 수
	public long dressListCount(WDDress wdDress)
	{
		long count = 0;
		
		try
		{
			count = wdDressDao.dressListCount(wdDress);
		}
		catch(Exception e)
		{
			logger.error("[WDDressService] dressListCount Exception", e);
		}
		
		return count;
	}
	
	//리스트
	public List<WDDress> dressList(WDDress wdDress)
	{
		List<WDDress> list = null;
		
		try
		{
			list = wdDressDao.dressList(wdDress);
		}
		catch(Exception e)
		{
			logger.error("[WDStudioService] studioList Exception", e);
		}
		
		return list;
	}
	
	//22.01.03 게시물 조회
	public WDDress dressSelect(String dNo)
	{
		WDDress wdDress = null;
		
		try
		{
			wdDress = wdDressDao.dressSelect(dNo);
		}
		catch(Exception e)
		{
			logger.error("[WDStudioService] dressSelect Exception", e);
		}
		
		return wdDress;
	}
	
	
}
