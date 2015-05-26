package com.sds.icto.money.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.money.vo.AccountBookVo;

@Repository
public class ManagementDao {
	
	@Autowired
	SqlMapClientTemplate st;

	public void insert(String mid, AccountBookVo vo) {
		HashMap map = new HashMap<>();
		map.put("mid", mid);
		map.put("aid", vo.getAid());
		map.put("atitle", vo.getAtitle());
	
		st.insert("managemnet.insert", map);
	}


}
