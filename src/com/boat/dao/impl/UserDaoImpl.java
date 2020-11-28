package com.boat.dao.impl;

import com.boat.dao.UserDao;
import com.boat.pojo.User;

import java.util.List;

public class UserDaoImpl extends BaseDao implements UserDao{
    @Override
    public User queryUserById(String id) {
        String sql = "select `用户ID` as id,`员工姓名` as username,`联系电话` as phone,`权限` as power from `系统用户表` where `用户ID` = ?";
        return queryForOne(User.class,sql,id);
    }

    @Override
    public User queryUserByIdAndPassword(String id, String password) {
        String sql = "select `用户ID` as id,`员工姓名` as username,`联系电话` as phone,`权限` as power from `系统用户表` where `用户ID` = ? and `密码` = ?";
        return queryForOne(User.class,sql,id,password);
    }

    @Override
    public int saveUser(User user) {
        String sql = "insert into `系统用户表`(`用户ID`,`员工姓名`,`密码`,`联系电话`,`权限`) value(?,?,?,?,?)";
        return update(sql,user.getId(),user.getUsername(),user.getPassword(),user.getPhone(),user.getPower());
    }
    @Override
    public int updateUserName(String name,String id){
        String sql = "update `系统用户表` set `员工姓名`=? where `用户ID` = ?";
        return update(sql,name,id);
    }

    @Override
    public int updateUserPassword(String password, String id) {
        String sql = "update `系统用户表` set `密码`=? where `用户ID` = ?";
        return update(sql,password,id);
    }

    @Override
    public int updateUserPhone(String Phone, String id) {
        String sql = "update `系统用户表` set `联系电话`=? where `用户ID` = ?";
        return update(sql,Phone,id);
    }

    @Override
    public User searchPasswordById(String id){
        String sql = "select `用户ID` as id,`员工姓名` as username,`联系电话` as phone,`权限` as power,`密码` as password from `系统用户表` where `用户ID` = ?";
        return queryForOne(User.class,sql,id);
    }

    @Override
    public Integer queryForPageTotalCount() {
        String sql = "select count(*) from `系统用户表`";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public Integer requeryForPageTotalCount(String username) {
        String sql = "select count(*) from `系统用户表` where `员工姓名`='" + username + "'";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<User> queryForPageItem(int begin, int pageSize) {
        String sql = "select `用户ID` as id,`员工姓名` as username,`联系电话` as phone,`权限` as power,`密码` as password from `系统用户表` limit ?,?";
        return queryForList(User.class,sql,begin,pageSize);
    }

    @Override
    public List<User> requeryForPageItem(int begin, int pageSize, String username) {
        String sql = "select `用户ID` as id,`员工姓名` as username,`联系电话` as phone,`权限` as power,`密码` as password from `系统用户表` where `员工姓名` = '" + username + "' limit ?,?";
        return queryForList(User.class,sql,begin,pageSize);
    }

    @Override
    public int deleteUserById(String Id) {
        String sql = "delete from  `系统用户表` where `用户ID` = ?";
        return update(sql,Id);
    }

    @Override
    public int updateUserRightById(String right, String Id) {
        String sql = "update `系统用户表` set `权限`=? where `用户ID` = ?";
        return update(sql,right,Id);
    }

    @Override
    public List<User> queryUsers() {
        String sql = "select `用户ID` as id,`员工姓名` as username,`联系电话` as phone,`权限` as power,`密码` as password from `系统用户表`";
        return queryForList(User.class,sql);
    }

    @Override
    public List<User> requeryUsers(String username) {
        String sql = "select `用户ID` as id,`员工姓名` as username,`联系电话` as phone,`权限` as power,`密码` as password from `系统用户表` where `员工姓名`='"+username+"'";
        System.out.println(sql);
        return queryForList(User.class,sql);
    }

    @Override
    public int updateUser(User user) {
        String sql = "update `系统用户表` set `密码`=?,`权限`=?,`员工姓名`=?,`联系电话`=? where `用户ID`=?";
        return update(sql,user.getPassword(),user.getPower(),user.getUsername(),user.getPhone(),user.getId());
    }
}
