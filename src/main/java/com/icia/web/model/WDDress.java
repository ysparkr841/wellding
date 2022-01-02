package com.icia.web.model;

import java.io.Serializable;

public class WDDress implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	private String dcCode;
	private String dNo;
	private String dcName;
	private String dName;
	private String dcLocation;
	private String dcNumber;
	private String dImgname;
	private long dPrice;
	private String dContent;
	
	private String searchType;		//검색타입(1:이름, 2:제목, 3:내용)
	private String searchValue;		//검색 값
	
	private WDHallFile wdDressFile;
	
	private long startRow;			//시작 rownum
	private long endRow;			//끝 rownum

	
	public WDDress()
	{
		dcCode = "";
		dNo = "";
		dcName = "";
		dName = "";
		dcLocation = "";
		dcNumber = "";
		dImgname = "";
		dPrice = 0;
		dContent = "";
		
		searchType = "";
		searchValue = "";
		
		wdDressFile = null;
		
		startRow = 0;
		endRow = 0;
	}


	public String getDcCode() {
		return dcCode;
	}


	public void setDcCode(String dcCode) {
		this.dcCode = dcCode;
	}


	public String getdNo() {
		return dNo;
	}


	public void setdNo(String dNo) {
		this.dNo = dNo;
	}


	public String getDcName() {
		return dcName;
	}


	public void setDcName(String dcName) {
		this.dcName = dcName;
	}


	public String getdName() {
		return dName;
	}


	public void setdName(String dName) {
		this.dName = dName;
	}


	public String getDcLocation() {
		return dcLocation;
	}


	public void setDcLocation(String dcLocation) {
		this.dcLocation = dcLocation;
	}


	public String getDcNumber() {
		return dcNumber;
	}


	public void setDcNumber(String dcNumber) {
		this.dcNumber = dcNumber;
	}


	public String getdImgname() {
		return dImgname;
	}


	public void setdImgname(String dImgname) {
		this.dImgname = dImgname;
	}


	public long getdPrice() {
		return dPrice;
	}


	public void setdPrice(long dPrice) {
		this.dPrice = dPrice;
	}


	public String getdContent() {
		return dContent;
	}


	public void setdContent(String dContent) {
		this.dContent = dContent;
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


	public WDHallFile getWdDressFile() {
		return wdDressFile;
	}


	public void setWdDressFile(WDHallFile wdDressFile) {
		this.wdDressFile = wdDressFile;
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

}
