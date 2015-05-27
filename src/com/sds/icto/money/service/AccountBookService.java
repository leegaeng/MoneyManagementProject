package com.sds.icto.money.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.sds.icto.money.dao.AccountBookDao;
import com.sds.icto.money.vo.AccountBookVo;

@Service
@Qualifier("accountbook")
public class AccountBookService {

	@Autowired
	AccountBookDao accountbookDao;

	public int insertAccount(AccountBookVo vo) {
		int aid = 0;
		aid = accountbookDao.insert(vo);

		return aid;
	}

	public AccountBookVo getAccount(int aid) {
		AccountBookVo vo = accountbookDao.get(aid);
		return vo;
	}

	public List<AccountBookVo> listAccount(String mid) {
		List<AccountBookVo> list = new ArrayList<AccountBookVo>();
		list = accountbookDao.list(mid);
		return list;
	}

}
