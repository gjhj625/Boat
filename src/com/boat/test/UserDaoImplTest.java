package com.boat.test;

import com.boat.dao.UserDao;
import com.boat.dao.impl.UserDaoImpl;
import com.boat.pojo.User;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class UserDaoImplTest {
    UserDao userDao = new UserDaoImpl();//上塑
    @Test
    public void queryUserById() {
        if (userDao.queryUserById("oyjt123")==null){
            System.out.println("用户ID可用");
        }else {
            System.out.println("用户ID已经存在，不可用");
            System.out.println(userDao.queryUserById("oyjt123"));
        }
    }

    @Test
    public void queryUserByIdAndPassword() {
        if (userDao.queryUserByIdAndPassword("oyx12345","123456")==null){
            System.out.println("用户ID或者密码错误，请重新登陆");
        }else {
            System.out.println("登陆成功");
            System.out.println(userDao.queryUserByIdAndPassword("oyx12345","123456"));
        }
    }

    @Test
    public void saveUser() {
        System.out.println(userDao.saveUser(new User("oyx12345","欧阳鑫君","123456","13727330308","无")));
    }

    @Test
    public void updateUserName(){
        System.out.println(userDao.updateUserName("欧阳钜添","ouyang"));
    }
    @Test
    public void updateUserPassword() {
        System.out.println(userDao.updateUserPassword("159753","ouyang"));
    }
    @Test
    public void updateUserPhone() {
        System.out.println(userDao.updateUserPhone("13431666627","ouyang"));
    }
    @Test
    public void searchPasswordById(){
        System.out.println(userDao.searchPasswordById("ouyang"));
    }

    @Test
    public void queryForPageTotalCount() {
        System.out.println(userDao.queryForPageTotalCount());
    }

    @Test
    public void queryForPageItem() {
        for (User user : userDao.queryForPageItem(1, 4)) {
            System.out.println(user);
        }
    }
    @Test
    public void deleteUserById() {
        System.out.println(userDao.deleteUserById("testtest"));
    }
    @Test
    public void updateUserRightById() {
        System.out.println(userDao.updateUserRightById("收费权","testtest"));
    }
}