package com.wowo.user.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
@Data
public class Account {
    private int id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date adate;
    private int amount;
    private int user_id;
    private int item_id;
    private String remark;
    private User user;
    private Item item;

    public Account(){}
    public Account(Date adate,int amount){
        this.adate=adate;
        this.amount=amount;
    }
}
