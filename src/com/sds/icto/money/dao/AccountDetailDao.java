package com.sds.icto.money.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.money.vo.AccountBookVo;
import com.sds.icto.money.vo.AccountDetailVo;

@Repository
public class AccountDetailDao {

	@Autowired
	SqlMapClientTemplate st;
	
	public int insert(AccountDetailVo vo) {
		int did = 0;
		did = (int) st.insert("accountdetail.insert", vo);
		return did;
	}
	
	public List<AccountDetailVo> list(int aid) {
		List<AccountDetailVo> list = new ArrayList<AccountDetailVo>();
		list = st.queryForList("accountdetail.list", aid);
		return list;
	}
	
	public AccountDetailVo get(int did) {
		AccountDetailVo vo = new AccountDetailVo();
		vo = (AccountDetailVo) st.queryForObject("accountdetail.get", did);
		return vo;
	}
	
}
