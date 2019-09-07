package com.wowo.day1;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.util.Date;

public class $UserDaoTest {
    UserDao userDao =null;
    SqlSession sqlSession =null;
    @Before
    public void init() throws IOException {
        SqlSessionFactory sqlSessionFactory = MybatisUtil.getsqlSessionFactory();
        sqlSession =sqlSessionFactory.openSession();
        //获得UserDao的实现类
         userDao = sqlSession.getMapper(UserDao.class);

    }

    @Test
    public void insertUserTest() throws IOException {
        System.out.println(userDao);
        userDao.insertUser(new User("RaRa",22,"CoCo",new Date()));

    }
    @After
    public void destroy(){
        sqlSession.commit();
        sqlSession.close();
    }
}
