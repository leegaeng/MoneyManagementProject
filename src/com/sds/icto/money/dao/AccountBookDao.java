package com.sds.icto.money.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.money.vo.AccountBookVo;

@Repository
public class AccountBookDao {

	@Autowired
	SqlMapClientTemplate st;

	public void insert(AccountBookVo vo) {
		st.insert("accountbook.insert", vo);
	}

	public List<AccountBookVo> list() {
		List<AccountBookVo> list = new ArrayList<AccountBookVo>();
		list = st.queryForList("accountbook.list");
		return list;
	}
}
