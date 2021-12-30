package com.icia.web.model;

import java.io.Serializable;

public class WDReviewFile implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private long RSeq;
	private long RFileSeq;
	private String RFileName;
	private String RFileOrgName;
	private String RFileExt;
	private long RFileSize;
	private String RegDate;
	
	public WDReviewFile() {
		  RSeq = 0;
		  RFileSeq = 0;
		  RFileName = "";
		  RFileOrgName = "";
		  RFileExt = "";
		  RFileSize = 0;
		  RegDate = "";
	}

	public long getRSeq() {
		return RSeq;
	}

	public void setRSeq(long rSeq) {
		RSeq = rSeq;
	}

	public long getRFileSeq() {
		return RFileSeq;
	}

	public void setRFileSeq(long rFileSeq) {
		RFileSeq = rFileSeq;
	}

	public String getRFileName() {
		return RFileName;
	}

	public void setRFileName(String rFileName) {
		RFileName = rFileName;
	}

	public String getRFileOrgName() {
		return RFileOrgName;
	}

	public void setRFileOrgName(String rFileOrgName) {
		RFileOrgName = rFileOrgName;
	}

	public String getRFileExt() {
		return RFileExt;
	}

	public void setRFileExt(String rFileExt) {
		RFileExt = rFileExt;
	}

	public long getRFileSize() {
		return RFileSize;
	}

	public void setRFileSize(long rFileSize) {
		RFileSize = rFileSize;
	}

	public String getRegDate() {
		return RegDate;
	}

	public void setRegDate(String regDate) {
		RegDate = regDate;
	}
	
	
	

}
