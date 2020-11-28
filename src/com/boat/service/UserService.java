package com.boat.service;

import com.boat.pojo.Page;
import com.boat.pojo.User;

import java.util.List;

public interface UserService {
    /**
     * 注册用户
     * @param user 传入一个类变量参数来保存数据
     */
    public void registUser(User user);

    /**
     * 登陆
     * @param user 传入一个类变量参数来保存数据
     * @return  如果有值则登陆成功，否之则失败
     */
    public User login(User user);

    /**
     * 判断该用户是否已经存在
     * @param id 传入的用户id
     * @return false则是没有该用户可用，否之则已经存在了
     */
    public boolean existUserId(String id);

    /**
     * 修改员工姓名
     * @param name
     * @param id
     */
    public void updateUserName(String name,String id);

    /**
     * 修改用户密码
     * @param password
     * @param id
     */
    public void updateUserPassword(String password, String id);

    /**
     * 修改用户联系电话
     * @param Phone
     * @param id
     * @return
     */
    public void updateUserPhone(String Phone, String id);

    public User searchPasswordById(String id);

    Page<User> page(int pageNo, int pageSize);
    Page<User> repage(int pageNo, int pageSize, String username);

    /**
     * 根据传来的Id参数删除用户
     * @param Id
     */
    public void deleteUserById(String Id);

    public void updateUserRightById(String right,String Id);
    public List<User> queryUsers();
    public List<User> requeryUsers(String username);
    public void updateUser(User user);
}
