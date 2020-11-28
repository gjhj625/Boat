package com.boat.web;

import com.boat.pojo.Page;
import com.boat.pojo.User;
import com.boat.service.UserService;
import com.boat.service.impl.UserServiceImpl;
import com.boat.utils.WebUtils;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;
import static java.lang.System.out;

public class UserServlet extends BaseServlet{
    private UserService userService = new UserServiceImpl();
    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //req.setCharacterEncoding("UTF-8");
        //获取请求参数 pageNo pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        out.println(pageNo);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        out.println(pageSize);
        //调用BookService.page(page,pageSize);
        Page<User> page = userService.page(pageNo,pageSize);
        page.setUrl("userServlet?action=page");
        //保存page对象
        //req.setAttribute("page",page);
        //请求转发到pages/manager/book/book_manager.jsp
        //req.getRequestDispatcher("/pages/manager/users.jsp").forward(req,resp);
        Gson gson = new Gson();
        R r = new R();
        r.setCode(0);
        r.setMsg("获取数据成功");
        r.setCount(page.getPageTotalCount());
        r.setData(page.getItems());
        //r.setPageTotalCount(page.getPageTotalCount());
        String json = gson.toJson(r);
        out.println(json);
        resp.getWriter().write(json);
    }
    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        userService.deleteUserById(id);
        resp.sendRedirect(req.getContextPath()+"/userServlet?action=page&pageNo="+req.getParameter("pageNo"));
    }
    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String token = (String) req.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        req.getSession().removeAttribute(KAPTCHA_SESSION_KEY);
        String id = req.getParameter("id");
        String password = req.getParameter("password");
        String code = req.getParameter("code");
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
        if (token!=null&&token.equalsIgnoreCase(code)){
            if (userService.login(user)==null){
                resp.getWriter().write("<script language='javascript'>alert('用户名或者密码错误，请重新登陆');window.location.href='index.jsp'</script>");
            }else {
                User user1 = userService.login(user);
                req.getSession().setAttribute("user",user1);
                resp.sendRedirect(req.getContextPath()+"/pages/user/index.jsp");
            }
        }else{

            //把回显信息，保存到request域中
            req.setAttribute("msg","验证码错误");
            req.setAttribute("id",id);
            req.getRequestDispatcher("/pages/user/login.jsp").forward(req,resp);
        }

    }

    protected void regist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String token = (String) req.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        req.getSession().removeAttribute(KAPTCHA_SESSION_KEY);


        String id = req.getParameter("id");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String code = req.getParameter("code");
        String phone = req.getParameter("phone");
        if (token!=null&&token.equalsIgnoreCase(code)){
            //验证码正确
            if (userService.existUserId(id)){
                System.out.println("id["+id+"]不可用");
                //把回显信息，保存到request域中
                req.setAttribute("msg","用户名已存在");
                req.setAttribute("id",id);
                req.setAttribute("username",username);
                req.setAttribute("phone",phone);
                req.getRequestDispatcher("/pages/manager/register.jsp").forward(req,resp);
            }else {
                //可用
                //把Service到Dao层保存到数据库中
                User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
                if (user!=null){
                    userService.registUser(user);
                    resp.getWriter().write("<script language='javascript'>alert('注册成功');window.location.href='userServlet?action=page'</script>");
                }
            }
        }else {
            //把回显信息，保存到request域中
            req.setAttribute("msg","验证码错误");
            req.setAttribute("id",id);
            req.setAttribute("username",username);
            req.setAttribute("phone",phone);

            //不正确
            //返回注册页面
            System.out.println("验证码["+code+"]错误");
            req.getRequestDispatcher("/pages/manager/register.jsp").forward(req,resp);
        }
    }
    protected void updateName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String id = req.getParameter("id");
        User user= (User) req.getSession().getAttribute("user");
        userService.updateUserName(name,id);
        user.setUsername(name);
        resp.sendRedirect(req.getHeader("Referer"));
    }
    protected void updatePhone(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String phone = req.getParameter("phone");
        String id = req.getParameter("id");
        User user= (User) req.getSession().getAttribute("user");
        userService.updateUserPhone(phone,id);
        user.setPhone(phone);
        resp.sendRedirect(req.getHeader("Referer"));
    }
    protected void updatePassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("userId");
        User user = userService.searchPasswordById(id);
        String password = req.getParameter("oldPassword");
        /*out.println("原密码数据库"+user.getPassword());
        out.println("原密码web"+password);
        out.println(password.equals(user.getPassword()));*/
        if (!password.equals(user.getPassword())){
            req.getRequestDispatcher("/pages/user/index.jsp");
        }else {
            String newPassword = req.getParameter("newPassword");
            /*out.println("新密码："+newPassword);*/
            userService.updateUserPassword(newPassword,id);
        }
        resp.sendRedirect(req.getHeader("Referer"));

    }
    protected void ajaxUpdateUserRightById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String right = req.getParameter("right");
        userService.updateUserRightById(right,id);
        //resp.sendRedirect(req.getContextPath()+"/userServlet?action=page&pageNo="+req.getParameter("pageNo"));
        //resp.sendRedirect(req.getHeader("Referer"));
        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("id",id);
        resultMap.put("right",right);
        Gson gson = new Gson();
        String json = gson.toJson(resultMap);
        resp.getWriter().write(json);
    }
    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        List<User> users = userService.queryUsers();
        Gson gson = new Gson();
        R r = new R();
        r.setCode(0);
        r.setMsg("获取数据成功");
        r.setCount(500);
        r.setData(users);
        String json = gson.toJson(r);
        resp.getWriter().write(json);
    }
    protected void ajaxUpdateUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        out.println("ajaxUpdateUser被调用了！");
        User user = WebUtils.copyParamToBean(req.getParameterMap(), new User());
        userService.updateUser(user);
    }
}
