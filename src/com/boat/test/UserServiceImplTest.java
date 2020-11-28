package com.boat.test;

import com.boat.pojo.Page;
import com.boat.pojo.User;
import com.boat.service.UserService;
import com.boat.service.impl.UserServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserServiceImplTest {
    UserService userService = new UserServiceImpl();//上塑

    @Test
    public void registUser() {
        userService.registUser(new User("ouyang", "欧阳甜甜", "123456", "13727330308", "无"));
    }


    @Test
    public void login() {
        System.out.println(userService.login(new User("ouyang", "欧阳甜甜", "123456", "18138900153", "无")));
    }

    @Test
    public void existUserId() {
        if (userService.existUserId("ouyang")) {
            System.out.println("用户名已经存在");
        } else {
            System.out.println("用户名可用");
        }
    }
    @Test
    public void page() {
        Page<User> page = userService.page(1, 4);
        for (User item : page.getItems()) {
            System.out.println(item);
        }
    }
    @Test
    public void deleteUserById() {
        userService.deleteUserById("testtest");
    }
    @Test
    public void updateUserRightById() {
        userService.updateUserRightById("监督权","testtest");
    }
}
