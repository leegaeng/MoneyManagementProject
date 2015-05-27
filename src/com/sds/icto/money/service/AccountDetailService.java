package com.sds.icto.money.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.money.dao.AccountDetailDao;
import com.sds.icto.money.vo.AccountBookVo;
import com.sds.icto.money.vo.AccountDetailVo;

@Service
public class AccountDetailService {

	@Autowired
	AccountDetailDao accountdetailDao;

	public int insertDetail(AccountDetailVo vo) {
		int aid = 0;
		aid = accountdetailDao.insert(vo);
		return aid;
	}

	public List<AccountDetailVo> listDetail(int aid) {
		List<AccountDetailVo> list = new ArrayList<AccountDetailVo>();
		list = accountdetailDao.list(aid);
		return list;
	}
}
