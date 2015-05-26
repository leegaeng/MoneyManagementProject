package com.sds.icto.money.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sds.icto.money.service.AccountBookService;
import com.sds.icto.money.service.ManagementService;
import com.sds.icto.money.vo.AccountBookVo;
import com.sds.icto.money.vo.MemberVo;

@Controller
@RequestMapping("/accountbook")
public class AccountBookController {

	@Autowired
	AccountBookService accountBookServ;

	@Autowired
	ManagementService managementServ;

	@RequestMapping("/list")
	public String list(Model m) {

		return "accountbook/list";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insertform() {

		return "accountbook/insertform";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute AccountBookVo vo, HttpSession session) {

		MemberVo member = (MemberVo) session.getAttribute("authMember");
		String mid = member.getMid();
		accountBookServ.insertAccount(vo);
		managementServ.insertManagement(mid, vo);

		return "accountbook/insertform";
	}

}