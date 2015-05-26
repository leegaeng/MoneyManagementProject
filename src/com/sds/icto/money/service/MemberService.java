package com.sds.icto.money.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.money.dao.MemberDao;
import com.sds.icto.money.vo.MemberVo;

@Service
public class MemberService {

	@Autowired
	MemberDao memberDao;

	public void joinUser(MemberVo vo) {

		memberDao.insert(vo);

	}

	public MemberVo authUser(MemberVo vo) {
		MemberVo m = memberDao.getMember(vo);
		return m;

	}
	
	public void updateUser(MemberVo vo){
		memberDao.update(vo);
	}

}
