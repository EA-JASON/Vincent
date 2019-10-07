package com.wowo.user.entity;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

// ˫��һ�Զ��Թ���
@Data
public class Item {
    private int id;
    private int type;
    private String name;
    private Item pItem;  // ����Ŀ
    private List<Item> sItems = new ArrayList<>();  //����Ŀ�ļ���

    public Item() {
    }

    public Item(int type, String name) {
        this.type = type;
        this.name = name;
    }
}