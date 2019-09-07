package com.wowo.day2;

import java.util.ArrayList;
import java.util.List;

public class Dept {
    private int id;
    private String name;
    //获得这个部门下的所有员工对象的集合
    private List<Emp> emps = new ArrayList<>();

    public Dept(){}
    public Dept(String name,int id){
        this.name=name;
        this.id=id;
    }
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public List<Emp> getEmps() {
        return emps;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmps(List<Emp> emps) {
        this.emps = emps;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
