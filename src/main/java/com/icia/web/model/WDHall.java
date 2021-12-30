package com.icia.web.model;

import java.io.Serializable;

public class WDHall implements Serializable{

	private static final long serialVersionUID = 1L;

	private String WHCode;
	private String HCode;
	private String HName;
	private long HPrice;
	private long HFood;
	private long HMin;
	private long HMax;
	private String HContent;
	private String HImgName;
	private long RezCount;
	
	private WDHallFile wdHallFile;
	
	public WDHall() {
		  WHCode = "";
		  HCode = "";
		  HName = "";
		  HPrice = 0;
		  HFood = 0;
		  HMin = 0;
		  HMax = 0;
		  HContent = "";
		  HImgName = "";
		  RezCount = 0;
		  
		  wdHallFile = null;
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

	public long getHPrice() {
		return HPrice;
	}

	public void setHPrice(long hPrice) {
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
