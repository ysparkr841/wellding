package com.icia.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.icia.web.dao.WDReviewDao;
import com.icia.web.model.WDReview;
import com.icia.web.model.WDReviewFile;

@Service("WDReviewService")
public class WDReviewService {
	
	private static Logger logger = LoggerFactory.getLogger(WDReviewService.class);
	
	//파일저장 디렉토리
	@Value("#{env['upload.save.dir']}")
	private String UPLOAD_SAVE_DIR;
	
	@Autowired
	private WDReviewDao wdReviewDao;
	
	public long ReviewListCount(WDReview wdReview) {
		
		long count = 0;
		
		try {
			count = wdReviewDao.ReviewListCount(wdReview);
		}
		catch(Exception e) {
			logger.error("[WDReviewService] ReviewListCount Exception", e);
		}
		
		return count;
	}
	
	public List<WDReview> ReviewList(WDReview wdReview){
		
		List<WDReview> list = null;
		
		try {
			list = wdReviewDao.ReviewList(wdReview);
		}
		catch(Exception e) {
			logger.error("[WDReviewService] ReviewList Exception", e);
		}
		
		return list;
	}
	
	public WDReview ReviewSelect(long RSeq) {
		
		WDReview wdReview = null;
		
		try {
			wdReview = wdReviewDao.ReviewSelect(RSeq);
		}
		catch(Exception e) {
			logger.error("[WDReviewService] ReviewSelect Exception", e);
		}
		
		return wdReview;
	}
	
	public WDReviewFile ReviewFileSelect(WDReviewFile wdReviewFile) {
		
		try {
			wdReviewFile = wdReviewDao.ReviewFileSelect(wdReviewFile);
		}
		catch(Exception e) {
			logger.error("[WDReviewService] ReviewFileSelect Exception", e);
		}
		
		return wdReviewFile;
		
	}
	
	

}
