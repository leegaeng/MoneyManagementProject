package com.sds.icto.money.vo;

public class AccountBookVo {
	private int aid;
	private String atitle;
	private int atotalMoney;
	private int aincome;
	private int aoutcome;
	private String acolor;

	public AccountBookVo() {
	}

	public AccountBookVo(int aid, String atitle, int atotalMoney, int aincome,
			int aoutcome, String acolor) {
		this.aid = aid;
		this.atitle = atitle;
		this.atotalMoney = atotalMoney;
		this.aincome = aincome;
		this.aoutcome = aoutcome;
		this.acolor = acolor;
	}

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

	public int getAtotalMoney() {
		return atotalMoney;
	}

	public void setAtotalMoney(int atotalMoney) {
		this.atotalMoney = atotalMoney;
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

	public String getAcolor() {
		return acolor;
	}

	public void setAcolor(String acolor) {
		this.acolor = acolor;
	}

	@Override
	public String toString() {
		return "AccountBookVo [aid=" + aid + ", atitle=" + atitle
				+ ", atotalMoney=" + atotalMoney + ", aincome=" + aincome
				+ ", aoutcome=" + aoutcome + ", acolor=" + acolor + "]";
	}

}
