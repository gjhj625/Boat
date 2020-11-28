package com.boat.web;

import com.boat.pojo.BoatBase;
import com.boat.pojo.Page;
import com.boat.service.BoatService;
import com.boat.service.impl.BoatServiceImpl;
import com.boat.utils.WebUtils;
import com.google.gson.Gson;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.locale.converters.DateLocaleConverter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.*;

public class BoatInfoServlet extends BaseServlet{
    BoatService boatService = new BoatServiceImpl();
    protected void addBoat(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DateConverter dateConverter = new DateConverter();
        dateConverter.setPattern("yyyy-MM-dd");
        ConvertUtils.register(dateConverter, Date.class);
        BoatBase boatBase = WebUtils.copyParamToBean(req.getParameterMap(), new BoatBase());
        //System.out.println(boatBase);
        boatService.addBoat(boatBase);
        resp.sendRedirect(req.getHeader("Referer"));
    }
    protected void showBoatBase(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = WebUtils.parseInt(req.getParameter("page"),1);
        int limit = WebUtils.parseInt(req.getParameter("limit"), Page.PAGE_SIZE);
        ConvertUtils.register(new DateLocaleConverter(),Date.class);
        //获取全部用户的信息
        List<BoatBase> boatBases = boatService.queryBoatBases();
        //分页后的用户信息
        Page<BoatBase> boatBasePage=boatService.page(page,limit);
        List<BoatBase> boatBase = boatBasePage.getItems();
        Map<String,Object> tableData =new HashMap<String,Object>();
        tableData.put("code",0);
        tableData.put("msg", "");
        tableData.put("count",boatBases.size());
        tableData.put("data",boatBase);
        Gson gson = new Gson();
        String json = gson.toJson(tableData);
        resp.getWriter().write(json);
    }
    protected void reshowBoat(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = WebUtils.parseInt(req.getParameter("page"),1);
        int limit = WebUtils.parseInt(req.getParameter("limit"), Page.PAGE_SIZE);
        String boatName = req.getParameter("boatName");
        ConvertUtils.register(new DateLocaleConverter(),Date.class);
        //获取全部用户的信息
        //List<BoatBase> boatBases = boatService.queryBoatBases();
        //分页后的用户信息
       // Page<BoatBase> boatBasePage=boatService.page(page,limit);
        //List<BoatBase> boatBase = boatBasePage.getItems();
        List<BoatBase> boatBase = new ArrayList<BoatBase>();
        BoatBase boatBase1 = boatService.queryBoatBaseByBoatName(boatName);
        boatBase.add(boatBase1);
        Map<String,Object> tableData =new HashMap<String,Object>();
        tableData.put("code",0);
        tableData.put("msg", "");
        tableData.put("count",1);
        tableData.put("data",boatBase);
        Gson gson = new Gson();
        String json = gson.toJson(tableData);
        resp.getWriter().write(json);
    }
    protected void deleteBoatByBoatName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String,Object> tableData =new HashMap<String,Object>();
        try {
            String boatName = req.getParameter("boatName");
            boatService.deleteBoatBaseByBoatName(boatName);
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
    protected void deleteBoatList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String,Object> tableData =new HashMap<String,Object>();
        Gson gson = new Gson();
        String names = req.getParameter("names");
        try {
            String[] split = names.split(",");
            for (String s : split) {
                boatService.deleteBoatBaseByBoatName(s);
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
        protected void ajaxUpdateBoatBase(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DateConverter dateConverter = new DateConverter();
        dateConverter.setPattern("yyyy-MM-dd");
        ConvertUtils.register(dateConverter, Date.class);
        BoatBase boatBase = WebUtils.copyParamToBean(req.getParameterMap(),new BoatBase());
        boatService.updateBoatBase(boatBase);
        Map<String,Object> tableData =new HashMap<String,Object>();
        tableData.put("code",200);
        tableData.put("msg", "");
        Gson gson = new Gson();
        String json = gson.toJson(tableData);
        resp.getWriter().write(json);
    }
}
