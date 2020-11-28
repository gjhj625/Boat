package com.boat.web;

import com.boat.pojo.BoatOperateCer;
import com.boat.pojo.Page;
import com.boat.service.BoatService;
import com.boat.service.impl.BoatServiceImpl;
import com.boat.utils.WebUtils;
import com.google.gson.Gson;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.locale.converters.DateLocaleConverter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

public class BoatOpeCerServlet extends BaseServlet{
    BoatService boatService = new BoatServiceImpl();
    //给船只添加运营证书
    protected void addBoatOpe(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String,Object> tableData =new HashMap<String,Object>();
        try {
            DateConverter dateConverter = new DateConverter();
            dateConverter.setPattern("yyyy-MM-dd");
            ConvertUtils.register(dateConverter, Date.class);
            BoatOperateCer boatOperateCer = WebUtils.copyParamToBean(req.getParameterMap(),new BoatOperateCer());
            boatService.addOpeCertificate(boatOperateCer);
            tableData.put("code",200);
            tableData.put("msg", "");
        } catch (Exception e) {
            tableData.put("code",0);
            tableData.put("msg", "");
            e.printStackTrace();
        }
        Gson gson = new Gson();
        String json = gson.toJson(tableData);
        resp.getWriter().write(json);
    }
    protected void showBoatOpe(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = WebUtils.parseInt(req.getParameter("page"),1);
        int limit = WebUtils.parseInt(req.getParameter("limit"), Page.PAGE_SIZE);
        ConvertUtils.register(new DateLocaleConverter(),Date.class);
        //获取全部用户的信息
        List<BoatOperateCer> boatOperateCerList = boatService.queryOpeCertificates();
        //分页后的用户信息
        Page<BoatOperateCer> boatOperateCerPage = boatService.pageOperateCer(page,limit);
        List<BoatOperateCer> boatOperateCer = boatOperateCerPage.getItems();
        Map<String,Object> tableData =new HashMap<String,Object>();
        tableData.put("code",0);
        tableData.put("msg", "");
        tableData.put("count",boatOperateCerList.size());
        tableData.put("data",boatOperateCer);
        Gson gson = new Gson();
        String json = gson.toJson(tableData);
        resp.getWriter().write(json);
    }
    protected void reshowBoatOpe(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = WebUtils.parseInt(req.getParameter("page"),1);
        int limit = WebUtils.parseInt(req.getParameter("limit"), Page.PAGE_SIZE);
        String boatName = req.getParameter("boatName");
        ConvertUtils.register(new DateLocaleConverter(),Date.class);
        List<BoatOperateCer> boatOperateCerList = new ArrayList<BoatOperateCer>();
        BoatOperateCer boatOperateCer = boatService.queryOperateCerByBoatName(boatName);
        boatOperateCerList.add(boatOperateCer);
        Map<String,Object> tableData =new HashMap<String,Object>();
        tableData.put("code",0);
        tableData.put("msg", "");
        tableData.put("count",1);
        tableData.put("data",boatOperateCerList);
        Gson gson = new Gson();
        String json = gson.toJson(tableData);
        resp.getWriter().write(json);
    }
    protected void tipsShowBoatOpe(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = WebUtils.parseInt(req.getParameter("page"),1);
        int limit = WebUtils.parseInt(req.getParameter("limit"), Page.PAGE_SIZE);
        ConvertUtils.register(new DateLocaleConverter(),Date.class);
        //获取全部用户的信息
        List<BoatOperateCer> boatOperateCerList = boatService.queryExpiredCertificates();
        System.out.println(boatOperateCerList);
        //分页后的用户信息
        Page<BoatOperateCer> boatOperateCerPage = boatService.pageExpiredCer(page,limit);
        List<BoatOperateCer> boatOperateCer = boatOperateCerPage.getItems();
        Map<String,Object> tableData =new HashMap<String,Object>();
        tableData.put("code",0);
        tableData.put("msg", "");
        tableData.put("count",boatOperateCerList.size());
        tableData.put("data",boatOperateCerList);
        Gson gson = new Gson();
        String json = gson.toJson(tableData);
        resp.getWriter().write(json);
    }
    protected void deleteBoatOpeByBoatName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String,Object> tableData =new HashMap<String,Object>();
        try {
            String boatName = req.getParameter("boatName");
            boatService.deleteOperateCerByBoatName(boatName);
            tableData.put("code",200);
            tableData.put("msg", "");
            Gson gson = new Gson();
            String json = gson.toJson(tableData);
            resp.getWriter().write(json);
        } catch (Exception e) {
            e.printStackTrace();
            tableData.put("code",0);
            tableData.put("msg", "");
        }
        Gson gson = new Gson();
        String json = gson.toJson(tableData);
        resp.getWriter().write(json);
    }
    protected void deleteBoatOpeList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String,Object> tableData =new HashMap<String,Object>();
        Gson gson = new Gson();
        String names = req.getParameter("names");
        try {
            String[] split = names.split(",");
            for (String s : split) {
                boatService.deleteOperateCerByBoatName(s);
            }
            tableData.put("code",200);
            tableData.put("msg", "");
            String json = gson.toJson(tableData);
            resp.getWriter().write(json);
        } catch (Exception e) {
            tableData.put("code",0);
            tableData.put("msg", "");
            String json = gson.toJson(tableData);
            resp.getWriter().write(json);
            e.printStackTrace();
        }
    }
    protected void ajaxUpdateBoatOpe(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DateConverter dateConverter = new DateConverter();
        dateConverter.setPattern("yyyy-MM-dd");
        ConvertUtils.register(dateConverter, Date.class);
        BoatOperateCer boatOperateCer = WebUtils.copyParamToBean(req.getParameterMap(),new BoatOperateCer());
        String boatName = req.getParameter("boatName");
        BoatOperateCer boatOperateCer1 = boatService.queryOperateCerByBoatName(boatName);
        if (boatOperateCer1==null){
            boatService.addOpeCertificate(boatOperateCer);
        }else {
            boatService.updateOperateCer(boatOperateCer);
        }
        Map<String,Object> tableData =new HashMap<String,Object>();
        tableData.put("code",200);
        tableData.put("msg", "");
        Gson gson = new Gson();
        String json = gson.toJson(tableData);
        resp.getWriter().write(json);
    }
}
