package com.wowo.user.controller;

import com.wowo.user.entity.Account;
import com.wowo.user.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class BbjtController {
    @Autowired
    AccountService accountService;

    @RequestMapping(value = "/bbtj",method = RequestMethod.GET)
    public ModelAndView bbtj(){
       List<Account> accounts = accountService.getAll();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("report/bbtj");
        mv.addObject("accounts",accounts);
        return mv;
    }
    @RequestMapping(value = "/bbtj_01")
    public String bbtj01(){
        return "report/bbtj_01";
    }
    @RequestMapping(value = "/bbtj_02")
    public String bbtj02(){
        return "report/bbtj_02";
    }
}
