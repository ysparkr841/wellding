package com.icia.web.model;

import java.io.Serializable;

public class WDNBoard implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	private long bSeq;			//게시판 번호
	private String adminId;		//게시자 아이디
	private String bTitle;		//게시물 제목
	private String bContent;	//게시물 내용
	private long bReadCnt;		//조회수
	private String regDate;		//등록일
	
	private String searchType;	//검색타입 (1: 제목)
	private String searchValue;	//검색 값
	
	private long startRow;		//시작 rownum
	private long endRow;		//끝 rownum
	
	public WDNBoard()
	{
		bSeq = 0;
		adminId = "";
		bTitle = "";
		bContent = "";
		bReadCnt = 0;
		regDate = "";
		searchType = "";
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



	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public long getbSeq() {
		return bSeq;
	}

	public void setbSeq(long bSeq) {
		this.bSeq = bSeq;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public long getbReadCnt() {
		return bReadCnt;
	}

	public void setbReadCnt(long bReadCnt) {
		this.bReadCnt = bReadCnt;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
}
