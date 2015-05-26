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

	public void insertAccount(AccountBookVo vo) {

		accountbookDao.insert(vo);

	}

	public List<AccountBookVo> listAccount() {
		List<AccountBookVo> list = new ArrayList<AccountBookVo>();
		list = accountbookDao.list();
		return list;
	}

}
