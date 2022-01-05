package com.icia.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.web.dao.WDCommentDao;
import com.icia.web.model.WDComment;

@Service("WDCommentService")
public class WDCommentService {
	
	private static Logger logger = LoggerFactory.getLogger(WDCommentService.class);
	
	@Autowired
	private WDCommentDao wdCommentDao;
	
	public List<WDComment> commentList(long parentSeq){
		
		List<WDComment> commentList = null;
		
		try {
			commentList = wdCommentDao.commentList(parentSeq);
		}
		catch(Exception e) {
			logger.error("[WDCommentService] commentList Exception", e);
		}
		return commentList;
	}
	
	public int WDCommentInsert(WDComment wdComment) {
		
		int count = 0;
		
		try {
			count = wdCommentDao.WDCommentInsert(wdComment);
		}
		catch(Exception e) {
			logger.error("[WDCommentService] WDCommentInsert Exception", e);
		}
		return count;
	}
	
	public int WDCommentMax(long parentSeq) {
		
		int count = 0;
		
		try {
			count = wdCommentDao.WDCommentMax(parentSeq);
		}
		catch(Exception e) {
			logger.error("[WDCommentService] WDCommentMax Exception", e);
		}		
		
		return count;
	}

}
