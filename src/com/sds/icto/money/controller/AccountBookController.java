package com.sds.icto.money.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
	ManagementService manageServ;

	@RequestMapping("/list")
	public String list(Model m, HttpSession session) {

		MemberVo member = (MemberVo) session.getAttribute("authMember");
		String mid = member.getMid();

		List<AccountBookVo> list = new ArrayList<AccountBookVo>();
		list = accountBookServ.listAccount(mid);

		m.addAttribute("list", list);

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
		int aid = accountBookServ.insertAccount(vo);
		vo = accountBookServ.getAccount(aid);
		manageServ.insertManagement(mid, vo);

		return "accountbook/list";
	}

	@RequestMapping(value = "/accountview/{aid}", method = RequestMethod.GET)
	public String accountview(@PathVariable int aid, Model m) {

		AccountBookVo vo = accountBookServ.getAccount(aid);
		m.addAttribute("a", vo);

		return "accountbook/accountview";
	}

}