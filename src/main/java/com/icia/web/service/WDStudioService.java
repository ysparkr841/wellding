package com.icia.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.icia.web.dao.WDStudioDao;
import com.icia.web.model.WDStudio;

@Service("WDStudioService")
public class WDStudioService 
{
	private static Logger logger = LoggerFactory.getLogger(WDStudioService.class);

	@Autowired
	private WDStudioDao wdStudioDao;
	
	//파일저장 디렉토리
	@Value("#{env['upload.save.dir']}")
	private String UPLOAD_SAVE_DIR;
	
	//총 게시물 수
	public long studioListCount(WDStudio wdStudio)
	{
		long count = 0;
		
		try
		{
			count = wdStudioDao.studioListCount(wdStudio);
		}
		catch(Exception e)
		{
			logger.error("[WDStudioService] studioListCount Exception", e);
		}
		
		return count;
	}
	
	//게시물 리스트
	public List<WDStudio> studioList(WDStudio wdStudio)
	{
		List<WDStudio> list = null;
		
		try
		{
			list = wdStudioDao.studioList(wdStudio);
		}
		catch(Exception e)
		{
			logger.error("[WDStudioService] studioList Exception", e);
		}
		
		return list;
	}
	
	//뷰 상세보기 페이지
	public WDStudio studioSelect(String sCode)
	{
		WDStudio wdStudio = null;
		
		try
		{
			wdStudio = wdStudioDao.studioSelect(sCode);
		}
		catch(Exception e)
		{
			logger.error("[WDStudioService] studioSelect Exception", e);
		}
		
		return wdStudio;
	}
	
	//업체 랜덤으로 불러오기
	public List<WDStudio> studioRandom(WDStudio wdStudio)
	{
		List<WDStudio> studioRandom = null;
		
		try
		{
			studioRandom = wdStudioDao.studioRandom(wdStudio);
		}
		catch(Exception e)
		{
			logger.error("[WDStudioService] studioRandom Exception", e);
		}
		
		return studioRandom;
	}
	
}
