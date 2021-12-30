package com.icia.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDReview;
import com.icia.web.model.WDReviewFile;

@Repository("wdReviewDao")
public interface WDReviewDao {
	
	//리뷰 게시글 총 수
	public long ReviewListCount(WDReview wdReview);
	
	//리뷰 리스트
	public List<WDReview> ReviewList(WDReview wdReview);
	
	//리뷰 게시글 조회
	public WDReview ReviewSelect(long RSeq);
	
	//리뷰 게시글 조회수 증가
	public long ReviewReadCntPlus(long RSeq);
	
	//리뷰 첨부파일 조회
	public WDReviewFile ReviewFileSelect(WDReviewFile wdReviewFile);
	
	

}
