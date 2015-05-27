package com.sds.icto.money.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sds.icto.money.service.AccountDetailService;
import com.sds.icto.money.vo.AccountBookVo;
import com.sds.icto.money.vo.AccountDetailVo;
import com.sds.icto.money.vo.MemberVo;

@Controller
@RequestMapping("/accountdetail")
public class AccountDetailController {

	@Autowired
	AccountDetailService accountdetailServ;
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(@RequestParam int aid,
			@ModelAttribute AccountDetailVo vo, HttpSession session) {

		vo.setAid(aid);
		int did = accountdetailServ.insertDetail(vo);
		
		return "redirect:/accountbook/accountview/"+aid;
	}


}
