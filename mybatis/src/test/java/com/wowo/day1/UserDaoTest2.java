package com.wowo.day1;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.util.Date;

public class UserDaoTest2 {
    UserDao2 userDao2=null;
    SqlSession sqlSession=null;

    @Before
    public void init() throws IOException {
        SqlSessionFactory sqlSessionFactory = MybatisUtil.getsqlSessionFactory();
        sqlSession =sqlSessionFactory.openSession();
        //获得UserDao的实现类
        userDao2 = sqlSession.getMapper(UserDao2.class);
    }
    @Test
    public void  insertUserTest(){
        System.out.println(userDao2);
        userDao2.interUser(new User("ZEZE",19,"SSS",new Date()));
    }
    @Test
    public void deleteTest(){
        userDao2.deleteUser(4);
    }
    @Test
    public void updateUserTest(){
        User user = new User("JACKETCHEN",50,"99999",null);
        user.setId(1);
        userDao2.updateUser(user);
    }
    @Test
    public void getUserById(){
//      User user  =  userDao2.getUserById(4);

    }
    @After
    public void destroy(){
        sqlSession.commit();
        sqlSession.close();
    }
}
