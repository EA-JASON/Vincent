package com.wowo.day1;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.Date;

public class UserDaoTest1 {
    @Test
    public void insertUserTest() throws IOException {
        //获得sqlSeeionFactory对象
        SqlSessionFactory sqlSessionFactory = MybatisUtil.getsqlSessionFactory();
        //获得SQLsession对象
        SqlSession sqlSession =sqlSessionFactory.openSession();
        //执行语句
        sqlSession.insert("xyz.insertUser",new User("tom",20,"fuck",new Date()));
        //提交
        sqlSession.commit();
        //关闭资源
        sqlSession.close();
    }
    @Test //修改
     public void updateUser() throws IOException {
        SqlSessionFactory sqlSessionFactory = MybatisUtil.getsqlSessionFactory();
        SqlSession sqlSession =sqlSessionFactory.openSession();
        User user = new User("aaa",30,"aaa",null);
        user.setId(19);
        sqlSession.update("xyz.updateUser",user);
        sqlSession.commit();
        sqlSession.close();
     }
     @Test
     public void getUserByIDTest() throws IOException {
         SqlSessionFactory sqlSessionFactory = MybatisUtil.getsqlSessionFactory();
         SqlSession sqlSession =sqlSessionFactory.openSession();
         User user = sqlSession.selectOne("xyz.getUserById",19);
         System.out.println(user);
         sqlSession.close();
     }

}
