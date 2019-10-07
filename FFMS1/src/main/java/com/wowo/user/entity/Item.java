package com.wowo.user.entity;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

// 双向一对多自关联
@Data
public class Item {
    private int id;
    private int type;
    private String name;
    private Item pItem;  // 父项目
    private List<Item> sItems = new ArrayList<>();  //子项目的集合

    public Item() {
    }

    public Item(int type, String name) {
        this.type = type;
        this.name = name;
    }
}