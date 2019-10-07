package com.wowo;

import com.wowo.user.entity.Account;
import com.wowo.user.service.AccountService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:/applicationContext_db.xml")
public class AccountServicetest {
    @Autowired
    AccountService accountService;

   @Test
   public void saveTest(){
       accountService.save(new Account(new Date(),88888));
   }
   @Test
    public void updateTest(){
       Account account = new Account(new Date(),99999);
       account.setId(29);
       accountService.update(account);
   }
   @Test
    public void deleteTest(){
       accountService.delete(29);
   }
   @Test
    public void deleteAccountsTest(){
       String [] ids = {"30","31","32","33"};
       accountService.deleteAccounts(ids);
   }

    @Test
    public void getAccountByPKTest(){
        Account account = accountService.getAccountByPk(2);
        System.out.println(account);
    }

    @Test
    public void getAllTest(){
    List<Account> list =  accountService.getAll();
    System.out.println(list);
    }

    @Test
    public void getPagesAccountsTest(){
        List<Account> accounts = accountService.getPagesAccounts(5,5) ;
        System.out.println(accounts);
    }

//    @Test
//    public void getPagesAccountsByDateTest(){
//        List<Account> accounts = accountService.getPagesAccountsByDate(new Date(),new Date()) ;
//        System.out.println(accounts);
//    }
//    ,"2016-01-10","2016-06-30"
}
