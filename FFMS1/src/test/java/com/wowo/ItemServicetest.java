package com.wowo;

import com.wowo.user.entity.Item;
import com.wowo.user.service.ItemService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:/applicationContext_db.xml")
public class ItemServicetest {
    @Autowired
    ItemService itemService;

    @Test
    public void saveTest(){
        itemService.save(new Item(6,"ghjgk"));
    }

    @Test
    public void updateTest(){
        Item item = new Item(9,"scott");
        item.setId(19);
        itemService.update(item);
    }

    @Test
    public void deleteTest(){
        itemService.delete(19);
    }

    @Test
    public void deleteItems(){
        String[]ids = {"20","21"};
        itemService.deleteItems(ids);
    }
    @Test
    public void getItemByPk(){
        Item item =  itemService.getItemByPk(3);
        System.out.println(item);
    }

    @Test
    public void getAllTest(){
        List<Item> list = itemService.getAll();
        System.out.println(list);
    }
    @Test
    public void getItemByType(){
        List<Item> list = itemService.getItemByType(2);
        System.out.println(list);
    }
}
