package com.icia.web.model;

import java.io.Serializable;

public class WDHall implements Serializable{

	private static final long serialVersionUID = 1L;

	private String WHCode;
	private String HCode;
	private String HName;
	private String whName;
	private String WHLocation;
	private String HPrice;
	private long HFood;
	private long HMin;
	private long HMax;
	private String whContent;
	private String HContent;
	private String HImgName;
	private long RezCount;
	private long hDiscount;
	private String whNumber;
	
	private String searchType;		//검색타입(1:이름, 2:제목, 3:내용)
	private String searchValue;		//검색 값
	
	private WDHallFile wdHallFile;
	
	private long startRow;			//시작 rownum
	private long endRow;			//끝 rownum
	
	public WDHall() {
		  WHCode = "";
		  HCode = "";
		  HName = "";
		  whName = "";
		  WHLocation = "";
		  HPrice = "";
		  HFood = 0;
		  HMin = 0;
		  HMax = 0;
		  whContent = "";
		  HContent = "";
		  HImgName = "";
		  RezCount = 0;
		  
		  startRow = 0;
		  endRow = 0;
		  wdHallFile = null;
		  
		  searchType = "";
		  searchValue = "";
		  
		  hDiscount = 0;
		  whNumber = "";
	}
	
	

	public String getWhNumber() {
		return whNumber;
	}

	public void setWhNumber(String whNumber) {
		this.whNumber = whNumber;
	}

	public long gethDiscount() {
		return hDiscount;
	}


	public void sethDiscount(long hDiscount) {
		this.hDiscount = hDiscount;
	}


	public String getWhContent() {
		return whContent;
	}

	public void setWhContent(String whContent) {
		this.whContent = whContent;
	}

	public String getWhName() {
		return whName;
	}

	public void setWhName(String whName) {
		this.whName = whName;
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



	public String getWHLocation() {
		return WHLocation;
	}



	public void setWHLocation(String wHLocation) {
		WHLocation = wHLocation;
	}



	public WDHallFile getWdHallFile() {
		return wdHallFile;
	}



	public void setWdHallFile(WDHallFile wdHallFile) {
		this.wdHallFile = wdHallFile;
	}



	public String getWHCode() {
		return WHCode;
	}

	public void setWHCode(String wHCode) {
		WHCode = wHCode;
	}

	public String getHCode() {
		return HCode;
	}

	public void setHCode(String hCode) {
		HCode = hCode;
	}

	public String getHName() {
		return HName;
	}

	public void setHName(String hName) {
		HName = hName;
	}

	public String getHPrice() {
		return HPrice;
	}

	public void setHPrice(String hPrice) {
		HPrice = hPrice;
	}

	public long getHFood() {
		return HFood;
	}

	public void setHFood(long hFood) {
		HFood = hFood;
	}

	public long getHMin() {
		return HMin;
	}

	public void setHMin(long hMin) {
		HMin = hMin;
	}

	public long getHMax() {
		return HMax;
	}

	public void setHMax(long hMax) {
		HMax = hMax;
	}

	public String getHContent() {
		return HContent;
	}

	public void setHContent(String hContent) {
		HContent = hContent;
	}

	public String getHImgName() {
		return HImgName;
	}

	public void setHImgName(String hImgName) {
		HImgName = hImgName;
	}

	public long getRezCount() {
		return RezCount;
	}

	public void setRezCount(long rezCount) {
		RezCount = rezCount;
	}
	
	

}
