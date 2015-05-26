package com.sds.icto.money.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.sds.icto.money.dao.ManagementDao;
import com.sds.icto.money.vo.AccountBookVo;

@Service
@Qualifier("management")
public class ManagementService {

	@Autowired
	ManagementDao managementDao;

	public void insertManagement(String mid, AccountBookVo vo) {
		managementDao.insert(mid, vo);
	}

}
