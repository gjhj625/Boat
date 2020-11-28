package com.boat.service.impl;

import com.boat.dao.BoatBaseInfo;
import com.boat.dao.BoatCertificate;
import com.boat.dao.impl.BoatBaseInfoImpl;
import com.boat.dao.impl.BoatCertificateImpl;
import com.boat.pojo.BoatBase;
import com.boat.pojo.BoatImg;
import com.boat.pojo.BoatOperateCer;
import com.boat.pojo.Page;
import com.boat.service.BoatService;

import java.util.List;

public class BoatServiceImpl implements BoatService {
    BoatBaseInfo boatBaseInfo = new BoatBaseInfoImpl();
    BoatCertificate boatCertificate = new BoatCertificateImpl();

    //船只基本信息
    @Override
    public void addBoat(BoatBase boatBase) {
        boatBaseInfo.saveBoatBase(boatBase);
    }

    @Override
    public void saveBoatImg(BoatImg boatImg) {
        boatBaseInfo.saveBoatImg(boatImg);
    }

    @Override
    public List<BoatBase> queryBoatBases() {
        return boatBaseInfo.queryBoatBases();
    }

    @Override
    public Page<BoatBase> page(int pageNo, int pageSize) {
        Page<BoatBase> page = new Page<BoatBase>();
        //求总记录数
        Integer pageTotalCount = boatBaseInfo.queryForPageTotalCount();
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
        List<BoatBase> item = boatBaseInfo.queryForPageItem(begin,pageSize);
        page.setItems(item);
        return page;
    }

    /**
     * 更改船只的基本信息根据船名
     * @param boatBase
     */
    @Override
    public void updateBoatBase(BoatBase boatBase) {
        boatBaseInfo.updateBoatBase(boatBase);
    }

    /**
     * 根据船名查找船只的基本信息
     * @param boatName
     * @return
     */
    @Override
    public BoatBase queryBoatBaseByBoatName(String boatName) {
        return boatBaseInfo.queryBoatBaseByBoatName(boatName);
    }
    /**
     * 根据船名级联删除删除相关船只的所有信息
     * @param boatName
     * @return
     */
    @Override
    public void deleteBoatBaseByBoatName(String boatName) {
        boatBaseInfo.deleteBoatBaseByBoatName(boatName);
    }




    //运营证书
    /**
     * 录入船只的运营证书
     * @param boatOperateCer
     */
    @Override
    public void addOpeCertificate(BoatOperateCer boatOperateCer) {
        boatCertificate.addOpeCertificate(boatOperateCer);
    }

    @Override
    public List<BoatOperateCer> queryOpeCertificates() {
        return boatCertificate.queryOpeCertificates();
    }

    @Override
    public List<BoatOperateCer> queryExpiredCertificates() {
        return boatCertificate.queryExpiredCertificates();
    }

    @Override
    public Page<BoatOperateCer> pageOperateCer(int pageNo, int pageSize) {
        Page<BoatOperateCer> page = new Page<BoatOperateCer>();
        //求总记录数
        Integer pageTotalCount = boatCertificate.queryForPageTotalCount();
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
        List<BoatOperateCer> item = boatCertificate.queryForPageItem(begin,pageSize);
        page.setItems(item);
        return page;
    }

    @Override
    public Page<BoatOperateCer> pageExpiredCer(int pageNo, int pageSize) {
        Page<BoatOperateCer> page = new Page<BoatOperateCer>();
        //求总记录数
        Integer pageTotalCount = boatCertificate.queryForPageTotalCount();
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
        List<BoatOperateCer> item = boatCertificate.queryForPageItem(begin,pageSize);
        page.setItems(item);
        return page;
    }

    @Override
    public void updateOperateCer(BoatOperateCer boatOperateCer) {
        boatCertificate.updateOperateCer(boatOperateCer);
    }

    @Override
    public BoatOperateCer queryOperateCerByBoatName(String boatName) {
        return boatCertificate.queryOpeCertificatesByBoatName(boatName);
    }

    @Override
    public void deleteOperateCerByBoatName(String boatName) {
        boatCertificate.deleteOpeCertificatesByBoatName(boatName);
    }
}
