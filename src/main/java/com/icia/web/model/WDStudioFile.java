/**스튜디오보현**/
package com.icia.web.model;

import java.io.Serializable;

public class WDStudioFile  implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	private long sSeq;
    private String sCode;
    private long s_file_seq;
    private String s_file_name;
    private String s_file_org_name;
    private String s_file_ext;
    private long s_file_size;
    private String reg_date;
    
    public WDStudioFile()
    {
    	sSeq = 0;
    	sCode = "";
    	s_file_seq = 0;
    	s_file_name = "";
    	s_file_org_name = "";
    	s_file_ext = "";
    	s_file_size = 0;
    	reg_date = "";
    }

	public long getsSeq() {
		return sSeq;
	}

	public void setsSeq(long sSeq) {
		this.sSeq = sSeq;
	}

	public String getsCode() {
		return sCode;
	}

	public void setsCode(String sCode) {
		this.sCode = sCode;
	}

	public long getS_file_seq() {
		return s_file_seq;
	}

	public void setS_file_seq(long s_file_seq) {
		this.s_file_seq = s_file_seq;
	}

	public String getS_file_name() {
		return s_file_name;
	}

	public void setS_file_name(String s_file_name) {
		this.s_file_name = s_file_name;
	}

	public String getS_file_org_name() {
		return s_file_org_name;
	}

	public void setS_file_org_name(String s_file_org_name) {
		this.s_file_org_name = s_file_org_name;
	}

	public String getS_file_ext() {
		return s_file_ext;
	}

	public void setS_file_ext(String s_file_ext) {
		this.s_file_ext = s_file_ext;
	}

	public long getS_file_size() {
		return s_file_size;
	}

	public void setS_file_size(long s_file_size) {
		this.s_file_size = s_file_size;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
    
}
