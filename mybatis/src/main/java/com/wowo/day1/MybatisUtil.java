package com.wowo.day1;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

public class MybatisUtil {

    public static SqlSessionFactory getsqlSessionFactory() throws IOException {
        //获得sqlSeSSIONFact对象
        Reader reader = Resources.getResourceAsReader("conf.xml");
              return   new SqlSessionFactoryBuilder().build(reader);
    }
    public static void main(String[] args) throws IOException {

        System.out.println(getsqlSessionFactory());
    }
}
