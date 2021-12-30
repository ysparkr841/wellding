package com.icia.web.model;

import java.io.Serializable;

public class WDReview implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private long RSeq;
	private String UserId;
	private String UNickName;
	private String WDate;
	private String RTitle;
	private String RContent;
	private long RReadCnt;
	private String RegDate;
	private double RScore;
	private char ZStatus;
	
	private WDReviewFile reviewFile;
	
	private String searchType;      //검색타입(1:제묵, 2:내용)
    private String searchValue;      //검색값
	
	public WDReview() {
		  RSeq = 0;
		  UserId = "";
		  UNickName = "";
		  WDate = "";
		  RTitle = "";
		  RContent = "";
		  RReadCnt = 0;
		  RegDate = "";
		  RScore = 0;
		  ZStatus = 'N';
		  reviewFile = null;
		  searchType = "";
		  searchValue = "";
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

	public char getZStatus() {
		return ZStatus;
	}

	public void setZStatus(char zStatus) {
		ZStatus = zStatus;
	}
	
	

}
