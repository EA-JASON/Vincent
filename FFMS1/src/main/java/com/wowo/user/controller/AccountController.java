package com.wowo.user.controller;

import com.github.pagehelper.Page;
import com.wowo.user.entity.Account;
import com.wowo.user.entity.User;
import com.wowo.user.service.AccountService;
import com.wowo.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

@Controller
public class AccountController {
    @Autowired(required=true)
    AccountService accountService;

    @Autowired(required=true)
    UserService userService;


    @RequestMapping("/accountlist")
    public ModelAndView alist(Integer pageNum, Integer pageSize){
        if(pageNum == null||pageNum==0) pageNum = 1;
        if(pageSize == null) pageSize = 7;
        Page<Account> page = accountService.getAccountPage(pageNum,pageSize);
        page.getResult();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("account/list");
        mv.addObject("page",page);
        return mv;
    }
    @RequestMapping(value = "/toaccountlist",method = RequestMethod.GET)
    public String reBackalist(){
        return "redirect:accountlist";
    }

    @RequestMapping(value = "/adetail",method = RequestMethod.GET)
    public ModelAndView adetail(Integer id){
       Account account = accountService.getAccountByPk(id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("account/detail");
        mv.addObject("account",account);
        return mv;
    }
    @RequestMapping(value = "/aedit",method = RequestMethod.GET)
    public ModelAndView aedit(Integer id){
       Account account = accountService.getAccountByPk(id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("account/edit");
        mv.addObject("account",account);
        return mv;
    }
    @RequestMapping(value = "/add")
    public ModelAndView add(){
      List<User> list = userService.getAll();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("account/add");
        mv.addObject("users",list);
        return mv;
    }

    @RequestMapping(value = "/accadd",method = RequestMethod.POST)
    public String toadd(Account account){
        accountService.save(account);
        return "redirect:accountlist";
    }

    @RequestMapping(value = "/adelete",method = RequestMethod.GET)
    public String delete(Integer id){
        accountService.delete(id);
        return "redirect:accountlist";
    }
    @RequestMapping(value = "/aupdate",method = RequestMethod.POST)
    public String update(Account account){
        accountService.update(account);
        return "redirect:accountlist";
    }
    @RequestMapping(value = "/deleteaccounts",method = RequestMethod.GET)
    public String deleteusers( String [] ids){
        accountService.deleteAccounts(ids);
        return "redirect:accountlist";
    }
    @RequestMapping(value = "/find")
    public ModelAndView find(Integer pageNum, Integer pageSize){
        if(pageNum == null||pageNum==0) pageNum = 1;
        if(pageSize == null) pageSize = 7;
        Page<Account> page = accountService.getAccountPage(pageNum,pageSize);
        page.getResult();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("account/find");
        mv.addObject("page",page);
        return mv;
    }

    @RequestMapping(value = "/afind",method = RequestMethod.POST)
    public ModelAndView tofind(Integer pageNum, Integer pageSize,@DateTimeFormat(pattern = "yyyy-MM-dd") Date begDate, @DateTimeFormat(pattern = "yyyy-MM-dd") Date endDate){
        if(pageNum == null||pageNum==0) pageNum = 0;
        if(pageSize == null) pageSize = 7;
       List<Account> accounts = accountService.getPagesAccountsByDate(pageNum,pageSize,begDate,endDate);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("account/out");
        mv.addObject("accounts",accounts);
        return mv;
    }

}
