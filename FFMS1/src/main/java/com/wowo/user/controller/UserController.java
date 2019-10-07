package com.wowo.user.controller;

import com.github.pagehelper.Page;
import com.wowo.user.entity.User;
import com.wowo.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.SQLException;

@Controller
public class UserController {
    @Autowired(required=true)
    private UserService userService;

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public  String list(){
       return "login";
    }
    @RequestMapping(value = "/index")
    public ModelAndView login(@RequestParam("username")String name,@RequestParam("pwd")String pwd) {
        ModelAndView index = new ModelAndView();
        index.setViewName("index");
        try {
            if (userService.canLogin(name, pwd) == true) {
                return index;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        ModelAndView mv = new ModelAndView();
        String errorinfo  = "用户名或密码不正确!";
        mv.addObject("errorinfo",errorinfo);
        mv.setViewName("login");
        return mv;
    }
    @RequestMapping(value = "/userlist",method = RequestMethod.GET)
    public ModelAndView ulist(Integer pageNum, Integer pageSize){
        if(pageNum == null||pageNum==0) pageNum = 1;
        if(pageSize == null) pageSize = 7;
        Page<User> page = userService.getUserPage(pageNum,pageSize);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user/list");
        mv.addObject("page",page);
        return mv;
    }

    @RequestMapping(value = "/uadd",method = RequestMethod.GET)
    public String uadd(){
        return "user/add";
    }

    @RequestMapping(value = "/useradd")
    public String add(User user){
        System.out.println(user);
        userService.save(user);
        return "redirect:userlist";
    }
    @RequestMapping(value = "/userdelete",method = RequestMethod.GET)
    public String delete(Integer id){
        userService.delete(id);
        return "redirect:userlist";
    }

    @RequestMapping(value = "/udetail",method = RequestMethod.GET)
    public ModelAndView udetail(Integer id){
       User user = userService.getUserByPK(id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user/detail");
        mv.addObject("user",user);
        return mv;
    }

    @RequestMapping(value = "/uedit",method = RequestMethod.GET)
    public ModelAndView  uedit(Integer id){
      User user = userService.getUserByPK(id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user/edit");
        mv.addObject("user",user);
        return mv;
    }
    @RequestMapping(value = "/userupdate")
    public String update(User user){
        userService.update(user);
        return "redirect:userlist";
    }

    @RequestMapping(value = "/deleteusers",method = RequestMethod.GET)
    public String deleteusers( String [] ids){
        userService.deleteUsers(ids);
        return "redirect:userlist";
    }

}
