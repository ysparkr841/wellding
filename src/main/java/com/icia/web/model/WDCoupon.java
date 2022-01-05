package com.icia.web.model;

import java.io.Serializable;

public class WDCoupon implements Serializable 
{
	private static final long serialVersionUID = 1L;
	
	private String userId;
	private String cCode;
	private String cStatus;
	
	private String cName;
	private long cPrice;
	private String cStartDate;
	private String cEndDate;
	private String cContent;
	
	public WDCoupon() {
		userId = "";
		cCode = "";
		cStatus = "Y";
		cName = "";
		cPrice = 0;
		cStartDate = "";
		cEndDate = "";
		cContent = "";
	}

	public String getcContent() {
		return cContent;
	}


	public void setcContent(String cContent) {
		this.cContent = cContent;
	}


	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getcCode() {
		return cCode;
	}

	public void setcCode(String cCode) {
		this.cCode = cCode;
	}

	public String getcStatus() {
		return cStatus;
	}

	public void setcStatus(String cStatus) {
		this.cStatus = cStatus;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public long getcPrice() {
		return cPrice;
	}

	public void setcPrice(long cPrice) {
		this.cPrice = cPrice;
	}

	public String getcStartDate() {
		return cStartDate;
	}

	public void setcStartDate(String cStartDate) {
		this.cStartDate = cStartDate;
	}

	public String getcEndDate() {
		return cEndDate;
	}

	public void setcEndDate(String cEndDate) {
		this.cEndDate = cEndDate;
	}

}
