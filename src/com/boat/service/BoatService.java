package com.boat.service;

import com.boat.pojo.BoatBase;
import com.boat.pojo.BoatImg;
import com.boat.pojo.BoatOperateCer;
import com.boat.pojo.Page;

import java.util.List;

public interface BoatService {
    /**
     * 传入船只的基本信息，增加船只
     * @param boatBase
     */
    public void addBoat(BoatBase boatBase);

    /**
     * 根据传入的BoatImg保存船只的对应船名的船舶相片
     * @param boatImg
     */
    public void saveBoatImg(BoatImg boatImg);

    public List<BoatBase> queryBoatBases();

    /**
     * 船只基本信息分页
     * @param pageNo
     * @param pageSize
     * @return
     */
    public Page<BoatBase> page(int pageNo, int pageSize);

    /**
     * 修改船只基本信息
     * @param boatBase
     */
    public void updateBoatBase(BoatBase boatBase);

    public BoatBase queryBoatBaseByBoatName(String boatName);

    /**
     * 根据船名级联删除删除相关船只的所有信息
     * @param boatName
     * @return
     */
    public void deleteBoatBaseByBoatName(String boatName);

    /**
     * 录入船只的运营证书
     * @param boatOperateCer
     */
    public void addOpeCertificate(BoatOperateCer boatOperateCer);

    /**
     * 查询所有船只的运营证书
     * @return
     */
    public List<BoatOperateCer> queryOpeCertificates();

    /**
     * 查询已过期以及即将过期的证书
     */
    public List<BoatOperateCer> queryExpiredCertificates();

    /**
     * 对运营证书进行分页
     * @param pageNo
     * @param pageSize
     * @return
     */
    public Page<BoatOperateCer> pageOperateCer(int pageNo, int pageSize);

    /**
     * 对即将过期的证书分页
     */
    public Page<BoatOperateCer> pageExpiredCer(int pageNo, int pageSize);
    /**
     * 更新船只的运营证书
     * @param boatOperateCer
     */
    public void updateOperateCer(BoatOperateCer boatOperateCer);

    /**
     * 根据船名查船只的运营证书
     * @param boatName
     * @return
     */
    public BoatOperateCer queryOperateCerByBoatName(String boatName);

    /**
     * 删除船只的运营证书通过船名
     * @param boatName
     */
    public void deleteOperateCerByBoatName(String boatName);
}
