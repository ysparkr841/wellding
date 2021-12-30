package com.icia.web.model;

import java.io.Serializable;

public class WDFBoard implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	//게시물 번호
	private long bSeq;
	//유저 아이디
	private String userId;
	//게시물 제목
	private String bTitle;
	//게시물 내용
	private String bContent;
	//조회수
	private int bReadCnt;
	//등록일
	private String regDate;
	//그룹
	private long bGroup;
	//오더
	private int bOrder;
	//인덴트
	private int bIndent;
	
	//유저테이블의 이름과 이메일을 가져오기 위해서 담을 변수 필요
	private String uName;
	private String uEmail;
	
	private String searchType;
	private String searchValue;
	
	private long startRow;
	private long endRow;
	
	private WDBoardFile wdBoardFile;
	
	public WDFBoard() 
	{
		bSeq = 0;
		userId = "";
		bTitle = "";
		bContent = "";
		bReadCnt = 0;
		regDate = "";
		bGroup = 0;
		bOrder = 0;
		bIndent = 0;
		uName = "";
		uEmail = "";
		searchType = "";
		searchValue = "";
		startRow = 0;
		endRow = 0;
		wdBoardFile = null;
	}

	public long getbSeq() {
		return bSeq;
	}

	public void setbSeq(long bSeq) {
		this.bSeq = bSeq;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public int getbReadCnt() {
		return bReadCnt;
	}

	public void setbReadCnt(int bReadCnt) {
		this.bReadCnt = bReadCnt;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public long getbGroup() {
		return bGroup;
	}

	public void setbGroup(long bGroup) {
		this.bGroup = bGroup;
	}

	public int getbOrder() {
		return bOrder;
	}

	public void setbOrder(int bOrder) {
		this.bOrder = bOrder;
	}

	public int getbIndent() {
		return bIndent;
	}

	public void setbIndent(int bIndent) {
		this.bIndent = bIndent;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuEmail() {
		return uEmail;
	}

	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
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

	public WDBoardFile getWdBoardFile() {
		return wdBoardFile;
	}

	public void setWdBoardFile(WDBoardFile wdBoardFile) {
		this.wdBoardFile = wdBoardFile;
	}
	
	
}
