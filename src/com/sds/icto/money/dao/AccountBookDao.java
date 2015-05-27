package com.sds.icto.money.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.money.vo.AccountBookVo;
import com.sds.icto.money.vo.AccountDetailVo;

@Repository
public class AccountBookDao {

	@Autowired
	SqlMapClientTemplate st;

	public int insert(AccountBookVo vo) {

		int aid = 0;
		aid = (int) st.insert("accountbook.insert", vo);
		return aid;

	}

	public AccountBookVo get(int aid) {
		AccountBookVo vo = (AccountBookVo) st.queryForObject("accountbook.get",
				aid);
		return vo;
	}

	public List<AccountBookVo> list(String mid) {
		List<AccountBookVo> list = new ArrayList<AccountBookVo>();
		list = st.queryForList("accountbook.list", mid);
		return list;
	}

	public void update(AccountBookVo ab, AccountDetailVo ad){
		
		ab.setAincome(ab.getAincome()+ad.getDincome());
		ab.setAoutcome(ab.getAoutcome()-ad.getDoutcome());
		ab.setAtotalmoney(ab.getAtotalmoney()+ad.getDincome()-ad.getDoutcome());
		
		st.update("accountbook.update", ab);
		
		
	}
}
