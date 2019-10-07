package com.wowo.user.entity;

import lombok.Data;

@Data
public class User {
    private int id;
    private String name;
    private String realname;
    private String pwd;

    public User(){}
    public User(String name,String realname,String pwd){
        this.name=name;
        this.realname=realname;
        this.pwd=pwd;
    }
}
