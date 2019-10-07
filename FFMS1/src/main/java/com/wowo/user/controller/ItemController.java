package com.wowo.user.controller;

import com.github.pagehelper.Page;
import com.wowo.user.entity.Item;
import com.wowo.user.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ItemController {
    @Autowired(required=true)
    ItemService itemService;

    @RequestMapping(value = "/itemlist",method = RequestMethod.GET)
    public ModelAndView ilist(Integer pageNum, Integer pageSize){
        if(pageNum == null||pageNum==0) pageNum = 1;
        if(pageSize == null) pageSize = 7;
        Page<Item> page = itemService.getItemPage(pageNum,pageSize);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("item/list");
        mv.addObject("page",page);
        return mv;
    }

    @RequestMapping(value = "/iadd",method = RequestMethod.GET)
    public ModelAndView iadd(){
       List<Item> items = itemService.getItemByType(1);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("item/add");
        mv.addObject("items",items);
        return mv;
    }
    @RequestMapping(value = "/addin",method = RequestMethod.POST)
    public String insert(Item item){
        itemService.save(item);
        return "redirect:itemlist";
    }
    @RequestMapping(value = "/idetail",method = RequestMethod.GET)
    public ModelAndView idetail(Integer id){
        System.out.println(id);
       Item item = itemService.getItemByPk(id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("item/detail");
        mv.addObject("item",item);
        return mv;
    }
    @RequestMapping(value = "/iedit",method = RequestMethod.GET)
    public ModelAndView iedit(Integer id){
      Item item =  itemService.getItemByPk(id);
        List<Item> list = itemService.getItemByType(1);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("item/edit");
        mv.addObject("item",item);
        ModelAndView Father = new ModelAndView();
        Father.setViewName("item/edit");
        Father.addObject("father",list);
        return mv;
    }
    @RequestMapping(value = "/iupdate",method = RequestMethod.POST)
    public String update(Item item){
        itemService.update(item);
        return "redirect:itemlist";
    }
    @RequestMapping(value = "/deleteitems",method = RequestMethod.GET)
    public String deleteusers( String [] ids){
        itemService.deleteItems(ids);
        return "redirect:itemlist";
    }
    @RequestMapping(value = "/idelete",method = RequestMethod.GET)
    public String delete(Integer id){
       itemService.delete(id);
        return "redirect:itemlist";
    }
}
