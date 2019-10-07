package com.wowo.user.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.wowo.user.dao.UserDao;
import com.wowo.user.entity.User;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.List;


@Service
@Data
@Transactional(readOnly = true)
public class UserService {
    @Autowired
  private UserDao userDao;
    @Transactional(readOnly = false)
    public void save(User user){
        userDao.save(user);
    }
    @Transactional(readOnly = false)
    public void delete(int id){
        userDao.delete(id);
    }
    @Transactional(readOnly = false)
    public void deleteUsers(String[]ids){
        userDao.deleteUsers(ids);
    }

    public User getUserByPK(int id){
        return userDao.getUserByPK(id);
    }

  public List<User> getAll(){
      return userDao.getAll();
  }

  public boolean canLogin(String name,String pwd)throws SQLException {
      User user = userDao.canLogin(name,pwd);
      System.out.println(user);
      if (user!=null){
          return true;
      }else {
          return false;
      }
  }
    /**
     *
     * @param pageNum : 当前第几页
     * @param pageSize:  每页显示的记录个数
     * @return
     */
    public Page<User> getUserPage(int pageNum, int pageSize){
        Page<User> page = PageHelper.startPage(pageNum,pageSize);
        userDao.getAll();
        return page;
    }
    @Transactional(readOnly = false)
    public void update(User user){userDao.update(user);}

  public User login(String name,String pwd){
        return userDao.canLogin(name,pwd);
  }
}
