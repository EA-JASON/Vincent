package com.wowo.day1;

import com.wowo.day2.Dept;
import com.wowo.day2.DeptDao;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;

public class DeptDaoTest {
    DeptDao deptDao = null;
    SqlSession sqlSession = null;

    @Before
    public void init() throws IOException {
        SqlSessionFactory sqlSessionFactory = MybatisUtil.getsqlSessionFactory();
        sqlSession = sqlSessionFactory.openSession();
        deptDao = sqlSession.getMapper(DeptDao.class);
    }

    @Test
    public void insertDeptTest() throws IOException {
        System.out.println(deptDao);
        Dept dept = new Dept("JACK", 1);
        deptDao.insertDept(dept);

    }
    @After
    public void destroy(){
        sqlSession.commit();
        sqlSession.close();
    }

}
