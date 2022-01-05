package com.icia.web.model;

import java.io.Serializable;

public class WDEBoard implements Serializable
{
	private static final long serialVersionUID = 1L;

	private long eBSeq;
	private String adminId;
	private String eBTitle;
	private String eBContent;
	private String eBImgName;
	private long eBReadCnt;
	private String regDate;
	
	private String adminName; 	//사용자 이름
		
	private String searchType;	//검색 타입
	private String searchValue; //검색 값 
		
	private long startRow;		//시작 ROWNUM
	private long endRow;		//끝 ROWNUM
	
	public WDEBoard()
	{
		eBSeq = 0;
		adminId = "";
		eBTitle = "";
		eBContent = "";
		eBReadCnt = 0;
		adminName = "";
		eBImgName = "";
		searchType = "";
		searchValue = "";
		startRow = 0;
		endRow = 0;
	}

	public long geteBSeq() {
		return eBSeq;
	}

	public void seteBSeq(long eBSeq) {
		this.eBSeq = eBSeq;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String geteBTitle() {
		return eBTitle;
	}

	public void seteBTitle(String eBTitle) {
		this.eBTitle = eBTitle;
	}

	public String geteBContent() {
		return eBContent;
	}

	public void seteBContent(String eBContent) {
		this.eBContent = eBContent;
	}

	public long geteBReadCnt() {
		return eBReadCnt;
	}

	public void seteBReadCnt(int eBReadCnt) {
		this.eBReadCnt = eBReadCnt;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
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

	public String geteBImgName() {
		return eBImgName;
	}

	public void seteBImgName(String eBImgName) {
		this.eBImgName = eBImgName;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
}