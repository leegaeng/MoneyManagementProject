package com.sds.icto.money.vo;
import java.util.Date;


public class AccountDetailVo {
	
	private int aid;
	private String atitle;
	private String acontent;
	private int aincome;
	private int aoutcome;
	private Date adate;
	private int amoney;
	
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAtitle() {
		return atitle;
	}
	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}
	public String getAcontent() {
		return acontent;
	}
	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}
	public int getAincome() {
		return aincome;
	}
	public void setAincome(int aincome) {
		this.aincome = aincome;
	}
	public int getAoutcome() {
		return aoutcome;
	}
	public void setAoutcome(int aoutcome) {
		this.aoutcome = aoutcome;
	}
	public Date getAdate() {
		return adate;
	}
	public void setAdate(Date adate) {
		this.adate = adate;
	}
	public int getAmoney() {
		return amoney;
	}
	public void setAmoney(int amoney) {
		this.amoney = amoney;
	}
	
	
	
}
