package com.boat.dao.impl;

import com.boat.dao.BoatCertificate;
import com.boat.pojo.BoatBase;
import com.boat.pojo.BoatOperateCer;

import java.util.List;

public class BoatCertificateImpl extends BaseDao implements BoatCertificate {
    @Override
    public int addOpeCertificate(BoatOperateCer boatOperateCer) {
        String sql = "insert into `港澳航线船舶营运证`(`船名`,`证书编号`,`载客定额`,`载货定额`,`经济性质`,`船舶经营人`,`批准机关`,`批准文号`,`客运航线`,`货运航线`,`发证日期`,`有效日期`) value" +
                "(?,?,?,?,?,?,?,?,?,?,?,?)";
        return update(sql,boatOperateCer.getBoatName(),boatOperateCer.getCerNo(),boatOperateCer.getPassNum(),boatOperateCer.getCargo(),boatOperateCer.getEconomic(),boatOperateCer.getShipOperator(),boatOperateCer.getOrg(),boatOperateCer.getApprovalNo(),boatOperateCer.getPassRoutes(),boatOperateCer.getCargoRoutes(),boatOperateCer.getGetCerDate(),boatOperateCer.getEffectiveDate());
    }

    @Override
    public List<BoatOperateCer> queryOpeCertificates() {
        String sql = "select `船名` boatName,`证书编号` cerNo,`载客定额` passNum,`载货定额` cargo,`经济性质` economic,`船舶经营人` shipOperator,`批准机关` org,`批准文号` approvalNo,`客运航线` passRoutes,`货运航线` cargoRoutes,`发证日期` getCerDate,`有效日期` effectiveDate from `港澳航线船舶营运证`";
        return queryForList(BoatOperateCer.class,sql);
    }

    @Override
    public List<BoatOperateCer> queryExpiredCertificates() {
        String sql = "SELECT `船名` boatName,`证书编号` cerNo,`船舶经营人` shipOperator,`批准机关` org,`批准文号` approvalNo,`发证日期` getCerDate,`有效日期` effectiveDate FROM `港澳航线船舶营运证`\n" +
                "WHERE `有效日期` < NOW() OR `有效日期` BETWEEN NOW() AND DATE_ADD(NOW(),INTERVAL 7 DAY)";
        System.out.println(queryForList(BoatOperateCer.class,sql));
        return queryForList(BoatOperateCer.class,sql);
    }

    @Override
    public Integer queryForPageTotalCount() {
        String sql="select count(*) from `港澳航线船舶营运证`";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public Integer queryForPageTotalCountExpired() {
        String sql = "SELECT `船名` boatName,`证书编号` cerNo,`船舶经营人` shipOperator,`批准机关` org,`批准文号` approvalNo,`发证日期` getCerDate,`有效日期` effectiveDate FROM `港澳航线船舶营运证`\n" +
                "WHERE `有效日期` < NOW() OR `有效日期` BETWEEN NOW() AND DATE_ADD(NOW(),INTERVAL 7 DAY)";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<BoatOperateCer> queryForPageItem(int begin, int pageSize) {
        String sql = "select `船名` boatName,`证书编号` cerNo,`载客定额` passNum,`载货定额` cargo,`经济性质` economic,`船舶经营人` shipOperator,`批准机关` org,`批准文号` approvalNo,`客运航线` passRoutes,`货运航线` cargoRoutes,`发证日期` getCerDate,`有效日期` effectiveDate from `港澳航线船舶营运证` limit ?,?";
        return queryForList(BoatOperateCer.class,sql,begin,pageSize);
    }

    @Override
    public int deleteOpeCertificatesByBoatName(String boatName) {
        String sql = "delete from `港澳航线船舶营运证` where `船名`=?";
        return update(sql,boatName);
    }

    @Override
    public BoatOperateCer queryOpeCertificatesByBoatName(String boatName) {
        String sql = "select `船名` boatName,`证书编号` cerNo,`载客定额` passNum,`载货定额` cargo,`经济性质` economic,`船舶经营人` shipOperator,`批准机关` org,`批准文号` approvalNo,`客运航线` passRoutes,`货运航线` cargoRoutes,`发证日期` getCerDate,`有效日期` effectiveDate from `港澳航线船舶营运证` where `船名`=?";
        return queryForOne(BoatOperateCer.class,sql,boatName);
    }

    @Override
    public int updateOperateCer(BoatOperateCer boatOperateCer) {
        String sql = "update `港澳航线船舶营运证` set `船名`=?,`证书编号`=?,`载客定额`=?,`载货定额`=?,`经济性质`=?,`船舶经营人`=?,`批准机关`=?,`批准文号`=?,`客运航线`=?,`货运航线`=?,`发证日期`=?,`有效日期`=? where `船名`=?";
        return update(sql,boatOperateCer.getBoatName(),boatOperateCer.getCerNo(),boatOperateCer.getPassNum(),boatOperateCer.getCargo(),boatOperateCer.getEconomic(),boatOperateCer.getShipOperator(),boatOperateCer.getOrg(),boatOperateCer.getApprovalNo(),boatOperateCer.getPassRoutes(),boatOperateCer.getCargoRoutes(),boatOperateCer.getGetCerDate(),boatOperateCer.getEffectiveDate(),boatOperateCer.getBoatName());
    }
}
