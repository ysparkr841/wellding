package com.icia.web.model;

import java.io.Serializable;

public class WDRez implements Serializable
{
	
	private static final long serialVersionUID = 1L;
	
	private String rezNo;
	private String whCode;
	private String hCode;
	private String sCode;
	private String dcCode;
	private String dNo;
	private String mCode;
	private long mPlusNum;
	private String rezStatus;
	private String rezDate;
	private String wDate;
	private String userId;
	private long rezFullPrice;
	private String cCode;
	private long rezPoint;
	
	public WDRez() {
		  rezNo = "";
		  whCode = "";
		  hCode = "";
		  sCode = "";
		  dcCode = "";
		  dNo = "";
		  mCode = "";
		  mPlusNum = 0;
		  rezStatus = "N";
		  rezDate = "";
		  wDate = "";
		  userId = "";
		  rezFullPrice = 0;
		  cCode = "";
		  rezPoint = 0;
	}


	public String getRezNo() {
		return rezNo;
	}

	public void setRezNo(String rezNo) {
		this.rezNo = rezNo;
	}

	public String getWhCode() {
		return whCode;
	}

	public void setWhCode(String whCode) {
		this.whCode = whCode;
	}

	public String gethCode() {
		return hCode;
	}

	public void sethCode(String hCode) {
		this.hCode = hCode;
	}

	public String getsCode() {
		return sCode;
	}

	public void setsCode(String sCode) {
		this.sCode = sCode;
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

	public String getmCode() {
		return mCode;
	}

	public void setmCode(String mCode) {
		this.mCode = mCode;
	}

	public long getmPlusNum() {
		return mPlusNum;
	}

	public void setmPlusNum(long mPlusNum) {
		this.mPlusNum = mPlusNum;
	}

	public String getRezStatus() {
		return rezStatus;
	}

	public void setRezStatus(String rezStatus) {
		this.rezStatus = rezStatus;
	}

	public String getRezDate() {
		return rezDate;
	}

	public void setRezDate(String rezDate) {
		this.rezDate = rezDate;
	}

	public String getwDate() {
		return wDate;
	}

	public void setwDate(String wDate) {
		this.wDate = wDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public long getRezFullPrice() {
		return rezFullPrice;
	}

	public void setRezFullPrice(long rezFullPrice) {
		this.rezFullPrice = rezFullPrice;
	}

	public String getcCode() {
		return cCode;
	}

	public void setcCode(String cCode) {
		this.cCode = cCode;
	}

	public long getRezPoint() {
		return rezPoint;
	}

	public void setRezPoint(long rezPoint) {
		this.rezPoint = rezPoint;
	}
	
	

}
