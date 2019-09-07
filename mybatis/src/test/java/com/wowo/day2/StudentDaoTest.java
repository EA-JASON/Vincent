package com.wowo.day2;

import com.wowo.day1.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.util.Date;
import java.util.List;

public class StudentDaoTest {
    StudentDao studentDao =null;
    SqlSession sqlSession = null;
    @Before
    public void init() throws IOException {
        SqlSessionFactory sqlSessionFactory = MybatisUtil.getsqlSessionFactory();
        sqlSession = sqlSessionFactory.openSession();
        studentDao = sqlSession.getMapper(StudentDao.class);
    }
    @Test
    public void insertStudentTest() throws IOException{
        System.out.println(studentDao);
        Student student = new Student(3,"Vincent","9872",new Date(),89);
        studentDao.insertStudent(student);
        System.out.println(student.getId());
    }
    @Test
    public void studentgetNameByid(){
        Student student =studentDao.getStudentById(1);
        System.out.println(student);
    }
    @Test
    public void getStudentsByScoreBetweenTest(){
        List<Student> students = studentDao.getStudentsByScoreBetween(82,100);
        System.out.println(students);

    }
//    public void




    public void getMapByIdTest(){
//        Map<String,Object> map = studentDao.getMapById();
//        System.out.println(map);
   }
    @After
    public void destroy(){
        sqlSession.commit();
        sqlSession.close();
    }
}
