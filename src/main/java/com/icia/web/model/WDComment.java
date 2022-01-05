package com.icia.web.model;

import java.io.Serializable;

public class WDComment implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private long parentSeq;
	private long commentSeq;
	private String userId;
	private String wdFBoardComment;
	private String regDate;
	
	private String uNickName;
	private String uEmail;
	
	public WDComment() {
		parentSeq = 0;
		commentSeq = 0;
		userId = "";
		wdFBoardComment = "";
		regDate = "";
		
		uNickName = "";
		uEmail = "";
	}

	public long getParentSeq() {
		return parentSeq;
	}

	public void setParentSeq(long parentSeq) {
		this.parentSeq = parentSeq;
	}

	public long getCommentSeq() {
		return commentSeq;
	}

	public void setCommentSeq(long commentSeq) {
		this.commentSeq = commentSeq;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getWdFBoardComment() {
		return wdFBoardComment;
	}

	public void setWdFBoardComment(String wdFBoardComment) {
		this.wdFBoardComment = wdFBoardComment;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getuNickName() {
		return uNickName;
	}

	public void setuNickName(String uNickName) {
		this.uNickName = uNickName;
	}

	public String getuEmail() {
		return uEmail;
	}

	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	
	
	

}
