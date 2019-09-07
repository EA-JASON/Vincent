package com.wowo.day2;

public class Emp {
    private int id;
    private String name;
    private int salary;
    public Emp(String name,int salary,Dept dept){
        this.name=name;
        this.salary=salary;
        this.dept=dept;
    }
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getSalary() {
        return salary;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    @Override
    public String toString() {
        return "Emp{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", salary=" + salary +
                '}';
    }

    private Dept dept; //面向对象


}
