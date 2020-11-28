package com.boat.service.impl;

import com.boat.dao.UserDao;
import com.boat.dao.impl.UserDaoImpl;
import com.boat.pojo.Page;
import com.boat.pojo.User;
import com.boat.service.UserService;

import java.awt.print.Book;
import java.util.List;

public class UserServiceImpl implements UserService {
    UserDao userDao = new UserDaoImpl();//上塑类型
    @Override
    public void registUser(User user) {
        userDao.saveUser(user);//通过Dao层保存数据
    }

    @Override
    public User login(User user) {
        //System.out.println(user.getId());
        //System.out.println(user.getPassword());
        return userDao.queryUserByIdAndPassword(user.getId(),user.getPassword());//通过传来的信息登陆
    }

    @Override
    public boolean existUserId(String id) {     //用来判断用户名是否存在
        if (userDao.queryUserById(id)==null){
            //null则没有该用户可用
            return false;
        }else {
            return true;
        }
    }

    @Override
    public void updateUserName(String name, String id) {
        userDao.updateUserName(name,id);
    }

    @Override
    public void updateUserPassword(String password, String id) {
        userDao.updateUserPassword(password,id);
    }

    @Override
    public void updateUserPhone(String Phone, String id) {
        userDao.updateUserPhone(Phone,id);
    }

    @Override
    public User searchPasswordById(String id) {
        return userDao.searchPasswordById(id);
    }

    @Override
    public Page<User> page(int pageNo, int pageSize) {
        Page<User> page = new Page<User>();
        //每页显示的数量
        page.setPageSize(pageSize);
        //求总记录数
        Integer pageTotalCount = userDao.queryForPageTotalCount();
        //设置总记录数
        page.setPageTotalCount(pageTotalCount);
        //总页数
        Integer pageTotal = pageTotalCount/pageSize;
        if(pageTotalCount%pageSize>0){
            pageTotal++;
        }
        //设置总页码数
        page.setPageTotal(pageTotal);
        //设置当前页码
        page.setPageNo(pageNo);
        //当前页码开始的位置索引
        int begin = (page.getPageNo()-1)*pageSize;
        //求当前页码的数据
        List<User> item = userDao.queryForPageItem(begin,pageSize);
        page.setItems(item);
        System.out.println(page);
        return page;
    }

    @Override
    public Page<User> repage(int pageNo, int pageSize, String username) {
        Page<User> page = new Page<User>();
        //每页显示的数量
        page.setPageSize(pageSize);
        //求总记录数
        Integer pageTotalCount = userDao.requeryForPageTotalCount(username);
        //设置总记录数
        page.setPageTotalCount(pageTotalCount);
        //总页数
        Integer pageTotal = pageTotalCount/pageSize;
        if(pageTotalCount%pageSize>0){
            pageTotal++;
        }
        //设置总页码数
        page.setPageTotal(pageTotal);
        //设置当前页码
        page.setPageNo(pageNo);
        //当前页码开始的位置索引
        int begin = (page.getPageNo()-1)*pageSize;
        //求当前页码的数据
        //System.out.println(begin + " " + pageSize);
        List<User> item = userDao.requeryForPageItem(begin,pageSize,username);
        page.setItems(item);
        //System.out.println(page);
        return page;
    }

    @Override
    public void deleteUserById(String Id) {
        userDao.deleteUserById(Id);
    }

    @Override
    public void updateUserRightById(String right, String Id) {
        userDao.updateUserRightById(right,Id);
    }

    @Override
    public List<User> queryUsers() {
        return userDao.queryUsers();
    }

    @Override
    public List<User> requeryUsers(String username) { return userDao.requeryUsers(username);}


    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }
}
