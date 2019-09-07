package com.wowo.day2;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface StudentDao {

    public void insertStudent(Student student);

    public Student getStudentById(int id);

    //获得
    public List<Student> getStudentsByScoreBetween(
           @Param("min") int minScore,
           @Param("max") int maxScore);

    //实体类:Map
   public List<Student> getStudentsByScoreBetween2(Map<String,Object> map);


    public List<Student> getMapById(Map<String,Object> map);
}
