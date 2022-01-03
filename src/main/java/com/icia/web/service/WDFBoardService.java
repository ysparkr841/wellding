package com.icia.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.icia.web.dao.WDFBoardDao;
import com.icia.web.model.WDBoardFile;
import com.icia.web.model.WDFBoard;

@Service("wdFBoardService")
public class WDFBoardService 
{
	private static Logger logger = LoggerFactory.getLogger(WDFBoardService.class);
	
	//파일저장 디렉토리
    @Value("#{env['upload.save.dir']}")
    private String UPLOAD_SAVE_DIR;
	
	@Autowired
	private WDFBoardDao wdFBoardDao;
	
	//총 게시물 수 확인
	public long fBoardListCount(WDFBoard wdFBoard) 
	{
		long count = 0;
		
		try 
		{
			count = wdFBoardDao.fBoardListCount(wdFBoard);
		}
		catch(Exception e) 
		{
			logger.error("[WDFBoardService] fBoardListCount Exception", e);
		}
		
		return count;
	}
	
	public List<WDFBoard> fBoardList(WDFBoard wdFBoard)
	{
		List<WDFBoard> list = null;
		
		try 
		{
			list = wdFBoardDao.fBoardList(wdFBoard);
		}
		catch(Exception e) 
		{
			logger.error("[WDFBoardService] fBoardList Exception", e);
		}
		
		return list;
	}
	
	
	//게시물 조회 , 파일 포함
	public WDFBoard wdFBoardView(long bSeq) 
	{
		WDFBoard wdFBoard = null;
		
		try 
		{
			wdFBoard = wdFBoardDao.fBoardViewSelect(bSeq);
			
			if(wdFBoard != null) 
			{
				wdFBoardDao.fBoardReadCntPlus(bSeq);
				
				WDBoardFile wdBoardFile = wdFBoardDao.fBoardFileSelect(bSeq);
				
				if(wdBoardFile != null) 
				{
					wdFBoard.setWdBoardFile(wdBoardFile);
				}
			}
		}
		catch(Exception e) 
		{
			logger.error("[WDFBoardService] wdFBoardView Exception", e);
		}
		
		return wdFBoard;
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Exception.class)
	public int boardInsert(WDFBoard wdFBoard) throws Exception
	{
		int count = 0;
		
		wdFBoard.setbSeq(wdFBoardDao.boardSeqSelect());
		
		count = wdFBoardDao.fBoardInsert(wdFBoard);
		
		if(count>0 && wdFBoard.getWdBoardFile() != null) 
		{
			WDBoardFile wdBoardFile = wdFBoard.getWdBoardFile();
			
			wdBoardFile.setbSeq(wdFBoard.getbSeq());
			wdBoardFile.setFileSeq((short)1);
			
			wdFBoardDao.boardFileInsert(wdBoardFile);
		}
		
		return count;
	}
}
