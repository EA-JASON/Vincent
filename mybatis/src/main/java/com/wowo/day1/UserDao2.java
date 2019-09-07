package com.wowo.day1;

import org.apache.ibatis.annotations.Insert;

public interface UserDao2 {
@Insert("insert into users(name,age,pwd) value(#{name},#{age},#{pwd})")
    public void interUser(User user);

@Insert("delete from users where id =#{id}")
public void deleteUser(int id);

@Insert("update users set name =#{name},pwd=#{pwd},age=#{age}  where id =#{id}")
public void updateUser(User user);

@Insert("select * from users where id =#{id}")
public void getUserById(int id);

@Insert("select * from users")
public void getAll();

}
