package com.wowo.user.dao;

import com.wowo.user.entity.Item;

import java.util.List;

public interface ItemDao {
    public void save(Item item);

    public void update(Item item);

    public  void  delete(int id);

    public void deleteItems(String[] ids);

    public Item getItemByPk(int id);

    public List<Item> getItemByType(int type);

    public List<Item> getAll();
}
