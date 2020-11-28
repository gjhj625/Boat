package com.boat.web;

import com.boat.pojo.Page;
import com.boat.pojo.User;
import com.boat.service.UserService;
import com.boat.service.impl.UserServiceImpl;
import com.boat.utils.WebUtils;
import com.google.gson.Gson;

import javax.jws.soap.SOAPBinding;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserController extends BaseServlet {
    //@ResponseBody//可以把一个集合转为json返回给前端
    private UserService userService = new UserServiceImpl();
    public void showUsers(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取全部用户的信息
        int page = WebUtils.parseInt(req.getParameter("page"),1);
        int limit = WebUtils.parseInt(req.getParameter("limit"), Page.PAGE_SIZE);
        List<User> users = userService.queryUsers();
        //分页后的用户信息
        Page<User> userPage = userService.page(page, limit);
        List<User> user = userPage.getItems();
        Map<String,Object> tableData =new HashMap<String,Object>();
        tableData.put("code",0);
        tableData.put("msg", "");
        tableData.put("count",users.size());
        tableData.put("data",user);
        Gson gson = new Gson();
        String json = gson.toJson(tableData);
        resp.getWriter().write(json);
    }
    public void reshowUsers(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取全部用户的信息
        int page = WebUtils.parseInt(req.getParameter("page"),1);
        int limit = WebUtils.parseInt(req.getParameter("limit"), Page.PAGE_SIZE);
        //System.out.println(page + " " + limit);
        String username = req.getParameter("username");
        List<User> users = userService.requeryUsers(username);
        //分页后的用户信息
        Page<User> userPage = userService.repage(page, limit, username);
        List<User> user = userPage.getItems();
        Map<String,Object> tableData =new HashMap<String,Object>();
        tableData.put("code",0);
        tableData.put("msg", "");
        tableData.put("count",users.size());
        tableData.put("data",user);
        Gson gson = new Gson();
        String json = gson.toJson(tableData);
        resp.getWriter().write(json);
    }
}
