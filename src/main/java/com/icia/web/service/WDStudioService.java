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
	private WDStudioDao wdStudiodao;
	
	//파일저장 디렉토리
	@Value("#{env['upload.save.dir']}")
	private String UPLOAD_SAVE_DIR;
	
	//총 게시물 수
	public long studioListCount(WDStudio wdStudio)
	{
		long count = 0;
		
		try
		{
			count = wdStudiodao.studioListCount(wdStudio);
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
			list = wdStudiodao.studioList(wdStudio);
		}
		catch(Exception e)
		{
			logger.error("[WDStudioService] studioList Exception", e);
		}
		
		return list;
	}
}
