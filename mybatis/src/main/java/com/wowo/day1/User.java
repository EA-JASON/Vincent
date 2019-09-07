package com.wowo.day1;

import java.util.Date;

public class User {
    private int id;
    private String name;
    private int age;
    private String pwd;
    private Date birthday;
    public User(String name,int age,String pwd,Date birthday){
        this.name=name;
        this.age=age;
        this.pwd=pwd;
        this.birthday=birthday;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getPwd() {
        return pwd;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", pwd='" + pwd + '\'' +
                ", birthday=" + birthday +
                '}';
    }
}
