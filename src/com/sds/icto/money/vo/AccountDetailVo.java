package com.sds.icto.money.vo;

import java.util.Date;

public class AccountDetailVo {

	private int aid;
	private int did;
	private String dtitle;
	private String dcontent;
	private int dincome;
	private int doutcome;
	private Date ddate;
	private int dmoney;

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getDtitle() {
		return dtitle;
	}

	public void setDtitle(String dtitle) {
		this.dtitle = dtitle;
	}

	public String getDcontent() {
		return dcontent;
	}

	public void setDcontent(String dcontent) {
		this.dcontent = dcontent;
	}

	public int getDincome() {
		return dincome;
	}

	public void setDincome(int dincome) {
		this.dincome = dincome;
	}

	public int getDoutcome() {
		return doutcome;
	}

	public void setDoutcome(int doutcome) {
		this.doutcome = doutcome;
	}

	public Date getDdate() {
		return ddate;
	}

	public void setDdate(Date ddate) {
		this.ddate = ddate;
	}

	public int getDmoney() {
		return dmoney;
	}

	public void setDmoney(int dmoney) {
		this.dmoney = dmoney;
	}

	@Override
	public String toString() {
		return "AccountDetailVo [aid=" + aid + ", did=" + did + ", dtitle="
				+ dtitle + ", dcontent=" + dcontent + ", dincome=" + dincome
				+ ", doutcome=" + doutcome + ", ddate=" + ddate + ", dmoney="
				+ dmoney + "]";
	}

}
