package com.sds.icto.money.vo;

public class MemberVo {
	
	private String mid;
	private String mname;
	private String mpassword;
	
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMpassword() {
		return mpassword;
	}
	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}
	@Override
	public String toString() {
		return "MemberVo [mid=" + mid + ", mname=" + mname + ", mpassword="
				+ mpassword + "]";
	}
	
	
	
}
