package com.icia.web.model;

import java.io.Serializable;

public class WDBoardFile implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private long bSeq;		//게시물 번호 
	private short fileSeq;		//게시물 번호별 파일 번호
	private String fileOrgName;	//원본 파일명
	private String fileName;	//저장될 파일명
	private String fileExt;		//파일 확장자 명
	private long fileSize;		//파일 크기(byte단위)
	private String regDate;		//등록일
	
	public WDBoardFile() 
	{
		bSeq = 0;
		fileSeq = 0;
		fileOrgName = "";
		fileName = "";
		fileExt = "";
		fileSize = 0;
		regDate = "";
	}

	public long getbSeq() {
		return bSeq;
	}

	public void setbSeq(long bSeq) {
		this.bSeq = bSeq;
	}

	public short getFileSeq() {
		return fileSeq;
	}

	public void setFileSeq(short fileSeq) {
		this.fileSeq = fileSeq;
	}

	public String getFileOrgName() {
		return fileOrgName;
	}

	public void setFileOrgName(String fileOrgName) {
		this.fileOrgName = fileOrgName;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileExt() {
		return fileExt;
	}

	public void setFileExt(String fileExt) {
		this.fileExt = fileExt;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
}
