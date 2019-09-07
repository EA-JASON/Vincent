package com.wowo.day2;

import java.util.Date;

public class Student {
   private int id;
   private String name;
   private String sno;
   private Date birthday;
   private int score;

   public Student(int id,String name,String sno,Date birthday,int score){
       this.id=id;
       this.name=name;
       this.sno=sno;
       this.birthday=birthday;
       this.score=score;
   }
   public Student(){}

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getSno() {
        return sno;
    }

    public Date getBirthday() {
        return birthday;
    }

    public int getScore() {
        return score;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public void setScore(int score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sno='" + sno + '\'' +
                ", birthday=" + birthday +
                ", score=" + score +
                '}';
    }
}
