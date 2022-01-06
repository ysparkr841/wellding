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
	private String whName;
	private String hName;
	private long hPrice;
	private long hFood;
	private long hMin;
	private String hImgName;
	private long hDiscount;
	private String sName;
	private long sPrice;
	private long sDiscount;
	private String sImgName;
	private String mName;
	private long mPrice;
	private long mPlus;
	private long mDiscount;
	private String mImgName;
	private String dcName;
	private String dName;
	private long dPrice;
	private long dDiscount;
	private String dImgName;
	
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
		  whName = "";
		  hName = "";
		  hPrice = 0;
		  hFood = 0;
		  hMin = 0;
		  hImgName = "";
		  hDiscount = 0;
		  sName = "";
		  sPrice = 0;
		  sDiscount = 0;
		  sImgName = "";
		  mName = "";
		  mPrice = 0;
		  mPlus = 0;
		  mDiscount = 0;
		  mImgName = "";
		  dcName = "";
		  dName = "";
		  dPrice = 0;
		  dDiscount = 0;
		  dImgName = "";
	}

	

	public String getRezNo() {
		return rezNo;
	}

	public String getWhName() {
		return whName;
	}



	public void setWhName(String whName) {
		this.whName = whName;
	}



	public String gethName() {
		return hName;
	}



	public void sethName(String hName) {
		this.hName = hName;
	}



	public long gethPrice() {
		return hPrice;
	}



	public void sethPrice(long hPrice) {
		this.hPrice = hPrice;
	}



	public long gethFood() {
		return hFood;
	}



	public void sethFood(long hFood) {
		this.hFood = hFood;
	}



	public long gethMin() {
		return hMin;
	}



	public void sethMin(long hMin) {
		this.hMin = hMin;
	}



	public String gethImgName() {
		return hImgName;
	}



	public void sethImgName(String hImgName) {
		this.hImgName = hImgName;
	}



	public long gethDiscount() {
		return hDiscount;
	}



	public void sethDiscount(long hDiscount) {
		this.hDiscount = hDiscount;
	}



	public String getsName() {
		return sName;
	}



	public void setsName(String sName) {
		this.sName = sName;
	}



	public long getsPrice() {
		return sPrice;
	}



	public void setsPrice(long sPrice) {
		this.sPrice = sPrice;
	}



	public long getsDiscount() {
		return sDiscount;
	}



	public void setsDiscount(long sDiscount) {
		this.sDiscount = sDiscount;
	}



	public String getsImgName() {
		return sImgName;
	}



	public void setsImgName(String sImgName) {
		this.sImgName = sImgName;
	}



	public String getmName() {
		return mName;
	}



	public void setmName(String mName) {
		this.mName = mName;
	}



	public long getmPrice() {
		return mPrice;
	}



	public void setmPrice(long mPrice) {
		this.mPrice = mPrice;
	}



	public long getmPlus() {
		return mPlus;
	}



	public void setmPlus(long mPlus) {
		this.mPlus = mPlus;
	}



	public long getmDiscount() {
		return mDiscount;
	}



	public void setmDiscount(long mDiscount) {
		this.mDiscount = mDiscount;
	}



	public String getmImgName() {
		return mImgName;
	}



	public void setmImgName(String mImgName) {
		this.mImgName = mImgName;
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



	public long getdPrice() {
		return dPrice;
	}



	public void setdPrice(long dPrice) {
		this.dPrice = dPrice;
	}



	public long getdDiscount() {
		return dDiscount;
	}



	public void setdDiscount(long dDiscount) {
		this.dDiscount = dDiscount;
	}



	public String getdImgName() {
		return dImgName;
	}



	public void setdImgName(String dImgName) {
		this.dImgName = dImgName;
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
