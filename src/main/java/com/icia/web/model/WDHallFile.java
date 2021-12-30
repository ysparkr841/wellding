package com.icia.web.model;

import java.io.Serializable;

public class WDHallFile implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String WHCode;
	private String HCode;
	private long HFileSeq;
	private String HFileName;
	private String HFileOrgName;
	private String HFileExt;
	private long HFileSize;
	private String RegDate;
	
	public WDHallFile() {
		  WHCode = "";
		  HCode = "";
		  HFileSeq = 0;
		  HFileName = "";
		  HFileOrgName = "";
		  HFileExt = "";
		  HFileSize = 0;
		  RegDate = "";
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

	public long getHFileSeq() {
		return HFileSeq;
	}

	public void setHFileSeq(long hFileSeq) {
		HFileSeq = hFileSeq;
	}

	public String getHFileName() {
		return HFileName;
	}

	public void setHFileName(String hFileName) {
		HFileName = hFileName;
	}

	public String getHFileOrgName() {
		return HFileOrgName;
	}

	public void setHFileOrgName(String hFileOrgName) {
		HFileOrgName = hFileOrgName;
	}

	public String getHFileExt() {
		return HFileExt;
	}

	public void setHFileExt(String hFileExt) {
		HFileExt = hFileExt;
	}

	public long getHFileSize() {
		return HFileSize;
	}

	public void setHFileSize(long hFileSize) {
		HFileSize = hFileSize;
	}

	public String getRegDate() {
		return RegDate;
	}

	public void setRegDate(String regDate) {
		RegDate = regDate;
	}
	
	
	
	
	

}
