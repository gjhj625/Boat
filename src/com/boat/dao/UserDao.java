package com.boat.dao;

import com.boat.pojo.User;

import java.util.List;

public interface UserDao {


    /**
     * 根据用户名查询用户信息
     * @param id 用户id
     * @return 如果返回null则没有该用户，反之则有
     */
    public User queryUserById(String id);

    /**
     * 根据用户名和密码查询用户信息
     * @param id 用户id
     * @param password 用户密码
     * @return 如果返回null则说明用户名或密码有错误，反之则正确
     */
    public User queryUserByIdAndPassword(String id, String password);
    /**
     * 保存用户信息
     * @param user
     * @return 返回-1表示操作失败
     */
    public int saveUser(User user);

    public int updateUserName(String name,String id);

    public int updateUserPassword(String password,String id);

    public int updateUserPhone(String Phone,String id);
    public User searchPasswordById(String id);

    Integer queryForPageTotalCount();
    Integer requeryForPageTotalCount(String username);
    public int deleteUserById(String Id);
    List<User> queryForPageItem(int begin, int pageSize);
    List<User> requeryForPageItem(int begin, int pageSize, String username);

    public int updateUserRightById(String right, String Id);
    public List<User> queryUsers();
    public List<User> requeryUsers(String username);
    public int updateUser(User user);
}
