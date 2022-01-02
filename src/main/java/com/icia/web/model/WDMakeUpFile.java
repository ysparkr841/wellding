package com.icia.web.model;

import java.io.Serializable;

public class WDMakeUpFile implements Serializable
{

	private static final long serialVersionUID = 1L;

	private long mSeq;
    private String mCode;
    private long mFileSeq;
    private String mFileName;
    private String mFileOrgName;
    private String mFileExt;
    private long mFileSize;
    private String regDate;
	
    
    public WDMakeUpFile() 
    {
    	  mSeq = 0;
          mCode = "";
          mFileSeq = 0;
          mFileName = "";
          mFileOrgName = "";
          mFileExt = "";
          mFileSize = 0;
          regDate = "";
    }


	public long getmSeq() {
		return mSeq;
	}


	public void setmSeq(long mSeq) {
		this.mSeq = mSeq;
	}


	public String getmCode() {
		return mCode;
	}


	public void setmCode(String mCode) {
		this.mCode = mCode;
	}


	public long getmFileSeq() {
		return mFileSeq;
	}


	public void setmFileSeq(long mFileSeq) {
		this.mFileSeq = mFileSeq;
	}


	public String getmFileName() {
		return mFileName;
	}


	public void setmFileName(String mFileName) {
		this.mFileName = mFileName;
	}


	public String getmFileOrgName() {
		return mFileOrgName;
	}


	public void setmFileOrgName(String mFileOrgName) {
		this.mFileOrgName = mFileOrgName;
	}


	public String getmFileExt() {
		return mFileExt;
	}


	public void setmFileExt(String mFileExt) {
		this.mFileExt = mFileExt;
	}


	public long getmFileSize() {
		return mFileSize;
	}


	public void setmFileSize(long mFileSize) {
		this.mFileSize = mFileSize;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
    
    
}
