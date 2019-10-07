package com.wowo;

import com.wowo.user.entity.User;
import com.wowo.user.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:/applicationContext_db.xml")
public class UserServicetest {
    @Autowired
    UserService userService;

    @Test
    public void saveTest(){
    userService.save(new User("BVLGARI","±¦¸ñÀö","@1986"));
    }

    @Test
    public void getAllTest(){
        System.out.println(userService.getAll());
    }

    @Test
    public void deleteTest(){
        userService.delete(7);
    }

    @Test
    public void deleteUsersTest(){
        String [] ids = {"2","3","4","5","6"};
        userService.deleteUsers(ids);
    }
    @Test
    public void getUserByPKTest(){
      User user =  userService.getUserByPK(4);
        System.out.println(user);
    }
    @Test
    public void canLoginTest(){
    User user = userService.login("wang5","123");
        System.out.println(user);
    }

}
