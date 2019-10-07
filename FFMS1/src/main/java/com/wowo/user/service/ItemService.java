package com.wowo.user.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.wowo.user.dao.ItemDao;
import com.wowo.user.entity.Item;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Data
@Transactional(readOnly = true)
public class ItemService {
    @Autowired
    ItemDao itemDao;

    @Transactional(readOnly = false)
    public void save(Item item){
        itemDao.save(item);
    }
    @Transactional(readOnly = false)
    public void update(Item item){
        itemDao.update(item);
    }
    @Transactional(readOnly = false)
    public void delete(int id){itemDao.delete(id);}
    @Transactional(readOnly = false)
    public void deleteItems(String[] ids){itemDao.deleteItems(ids);}

    public List<Item> getAll(){ return itemDao.getAll();}

    public Item getItemByPk(int id){return itemDao.getItemByPk(id);}

    public List<Item> getItemByType(int type){
        return itemDao.getItemByType(type);
    }

    /**
     *
     * @param pageNum : 当前第几页
     * @param pageSize:  每页显示的记录个数
     * @return
     */
    public Page<Item> getItemPage(int pageNum, int pageSize){
        Page<Item> page = PageHelper.startPage(pageNum,pageSize);
        itemDao.getAll();
        return page;
    }

}
