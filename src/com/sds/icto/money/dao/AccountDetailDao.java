package com.sds.icto.money.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

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
}
