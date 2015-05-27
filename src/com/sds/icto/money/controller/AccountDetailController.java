package com.sds.icto.money.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sds.icto.money.service.AccountBookService;
import com.sds.icto.money.service.AccountDetailService;
import com.sds.icto.money.vo.AccountBookVo;
import com.sds.icto.money.vo.AccountDetailVo;

@Controller
@RequestMapping("/accountdetail")
public class AccountDetailController {

	@Autowired
	AccountDetailService accountdetailServ;
	
	@Autowired
	AccountBookService accountbookServ;
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(@RequestParam int aid,
			@ModelAttribute AccountDetailVo vo, HttpSession session) {

		vo.setAid(aid);
		int did = accountdetailServ.insertDetail(vo);
		
		AccountBookVo ab= accountbookServ.getAccount(aid);
		AccountDetailVo ad = accountdetailServ.getDetail(did);
		
		accountbookServ.update(ab, ad);
		
		
		return "redirect:/accountbook/accountview/"+aid;
	}


}
