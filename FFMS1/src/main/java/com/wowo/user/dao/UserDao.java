package com.wowo.user.dao;

import com.wowo.user.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {

    public void save(User user);

    public void delete(int id);

    public void deleteUsers(String[] ids);

    public User getUserByPK(int id);

    public List<User> getAll();

    public void update(User user);

    public User canLogin(
            @Param("name") String name,
            @Param("pwd") String pwd);
}
