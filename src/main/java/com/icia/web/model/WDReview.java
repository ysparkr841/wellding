package com.icia.web.model;

import java.io.Serializable;

public class WDReview implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private long RSeq;
	private String rezNo;
	private String UserId;
	private String UNickName;
	private String WDate;
	private String RTitle;
	private String RContent;
	private long RReadCnt;
	private String RegDate;
	private double RScore;
	private String rezStatus;
	
	private WDReviewFile reviewFile;
	
    private String searchValue;      //검색값
    
	private long startRow;
	private long endRow;
	
	public WDReview() {
		  RSeq = 0;
		  rezNo = "";
		  UserId = "";
		  UNickName = "";
		  WDate = "";
		  RTitle = "";
		  RContent = "";
		  RReadCnt = 0;
		  RegDate = "";
		  RScore = 0;
		  rezStatus = "N";
		  reviewFile = null;
		  searchValue = "";
		startRow = 0;
		endRow = 0;
	}
		

	public long getStartRow() {
		return startRow;
	}


	public void setStartRow(long startRow) {
		this.startRow = startRow;
	}


	public long getEndRow() {
		return endRow;
	}


	public void setEndRow(long endRow) {
		this.endRow = endRow;
	}


	public String getRezNo() {
		return rezNo;
	}


	public void setRezNo(String rezNo) {
		this.rezNo = rezNo;
	}


	public String getRezStatus() {
		return rezStatus;
	}


	public void setRezStatus(String rezStatus) {
		this.rezStatus = rezStatus;
	}

	public String getSearchValue() {
		return searchValue;
	}


	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}


	public WDReviewFile getReviewFile() {
		return reviewFile;
	}


	public void setReviewFile(WDReviewFile reviewFile) {
		this.reviewFile = reviewFile;
	}


	public long getRSeq() {
		return RSeq;
	}

	public void setRSeq(long rSeq) {
		RSeq = rSeq;
	}

	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	public String getUNickName() {
		return UNickName;
	}

	public void setUNickName(String uNickName) {
		UNickName = uNickName;
	}

	public String getWDate() {
		return WDate;
	}

	public void setWDate(String wDate) {
		WDate = wDate;
	}

	public String getRTitle() {
		return RTitle;
	}

	public void setRTitle(String rTitle) {
		RTitle = rTitle;
	}

	public String getRContent() {
		return RContent;
	}

	public void setRContent(String rContent) {
		RContent = rContent;
	}

	public long getRReadCnt() {
		return RReadCnt;
	}

	public void setRReadCnt(long rReadCnt) {
		RReadCnt = rReadCnt;
	}

	public String getRegDate() {
		return RegDate;
	}

	public void setRegDate(String regDate) {
		RegDate = regDate;
	}

	public double getRScore() {
		return RScore;
	}

	public void setRScore(double rScore) {
		RScore = rScore;
	}

	
	

}
