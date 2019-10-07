package com.wowo.user.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.wowo.user.dao.AccountDao;
import com.wowo.user.entity.Account;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@Data
@Transactional(readOnly = true)
public class AccountService {
    @Autowired
   private AccountDao accountDao;
    @Transactional(readOnly = false)
    public void save(Account account){accountDao.save(account);}
    @Transactional(readOnly = false)
    public void delete(int id){accountDao.delete(id);}
    @Transactional(readOnly = false)
    public void deleteAccounts(String[] ids){accountDao.deleteAccounts(ids);}

    public Account getAccountByPk(int id){return accountDao.getAccountByPK(id);}
    @Transactional(readOnly = false)
    public void update(Account account){accountDao.update(account);}

    public List<Account> getAll(){
     return accountDao.getAll();
    }

 /**
  *
  * @param pageNum : 当前第几页
  * @param pageSize:  每页显示的记录个数
  * @return
  */
 public Page<Account> getAccountPage(int pageNum, int pageSize){
  Page<Account> page = PageHelper.startPage(pageNum,pageSize);
  accountDao.getAll();
  return page;
 }
    //分页查询
    public List<Account> getPagesAccounts(int pageNum, int pageSize){ return accountDao.getPagesAccounts(pageNum,pageSize);}
    //根据日期分页查询结果
    public List<Account> getPagesAccountsByDate(int pageNum,int pageSize,Date begDate, Date endDate){return accountDao.getPagesAccountsByDate(pageNum,pageSize,begDate,endDate);}

//    public Page<Account> getAccountPageByDate(int pageNum, int pageSize,Date begDate, Date endDate){
//        Page<Account> page = PageHelper.startPage(pageNum,pageSize);
//        accountDao.getPagesAccountsByDate(begDate,endDate);
//        return page;
//    }
}
