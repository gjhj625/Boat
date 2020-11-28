package com.boat.dao;

import com.boat.pojo.BoatBase;
import com.boat.pojo.BoatOperateCer;

import java.util.List;

public interface BoatCertificate {
    /**
     * 添加船只的运营证书
     * @param boatOperateCer
     * @return
     */
    public int addOpeCertificate(BoatOperateCer boatOperateCer);

    /**
     * 查找所有的船只的运营证书
     * @return
     */
    public List<BoatOperateCer> queryOpeCertificates();

    /**
     * 查询已过期以及即将过期的证书
     */
    public List<BoatOperateCer> queryExpiredCertificates();

    /**
     * 所有数据的总数
     * @return
     */
    public Integer queryForPageTotalCount();

    /**
     * 所有数据的总数
     * @return
     */
    public Integer queryForPageTotalCountExpired();

    /**
     * 查找分页的数据
     * @param begin
     * @param pageSize
     * @return
     */
    public List<BoatOperateCer> queryForPageItem(int begin, int pageSize);

    /**
     * 根据船名删除它的运营证书
     * @param boatName
     * @return
     */
    public int deleteOpeCertificatesByBoatName(String boatName);

    /**
     * 根据船名来查询相关船只的运营证书
     * @param boatName
     * @return
     */
    public BoatOperateCer queryOpeCertificatesByBoatName(String boatName);

    /**
     * 更新船只的运营证书
     * @param boatOperateCer
     * @return
     */
    public int updateOperateCer(BoatOperateCer boatOperateCer);
}
