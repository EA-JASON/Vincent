package com.wowo.day1;

import com.wowo.day2.Dept;
import com.wowo.day2.Emp;
import com.wowo.day2.EmpDao;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;

public class EmpDaoTest {
    EmpDao empDao = null;
    SqlSession sqlSession = null;

    @Before
    public void init() throws IOException {
        SqlSessionFactory sqlSessionFactory = MybatisUtil.getsqlSessionFactory();
        sqlSession = sqlSessionFactory.openSession();
        empDao = sqlSession.getMapper(EmpDao.class);
    }

    @Test
    public void insertEmpTest() throws IOException {
        System.out.println(empDao);
        Dept dept = new Dept();
        dept.setId(1);
        Emp emp = new Emp("Swen",5000,dept);
        empDao.insertEmp(emp);
    }
    @After
    public void destroy(){
        sqlSession.commit();
        sqlSession.close();
    }
}
