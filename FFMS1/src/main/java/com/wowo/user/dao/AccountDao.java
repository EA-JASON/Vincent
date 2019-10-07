package com.wowo.user.dao;

import com.wowo.user.entity.Account;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface AccountDao {
    public void save(Account account);

    public void update(Account account);

    public void delete(int id);

    public List<Account>getAll();

    public void deleteAccounts(String[] ids);

    public Account getAccountByPK(int id);
    //∑÷“≥≤È—Ø
    public List<Account> getPagesAccounts(
            @Param("pageNum") int pageNum,
            @Param("pageSize")int pageSize);

    public List<Account> getPagesAccountsByDate(
            @Param("pageNum") int pageNum,
            @Param("pageSize") int pageSize,
            @Param("begDate") Date begDate,
            @Param("endDate")Date endDate);
}
