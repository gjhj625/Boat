package com.boat.dao.impl;

import com.boat.dao.BoatBaseInfo;
import com.boat.pojo.BoatBase;
import com.boat.pojo.BoatImg;

import java.util.List;

public class BoatBaseInfoImpl extends BaseDao implements BoatBaseInfo {
    @Override
    public int saveBoatBase(BoatBase boatBase) {
        String sql = "insert into `船舶所有权登记证书`(`船名`,`登记号码`,`初次登记号`,`曾用名`,`船籍港`,`原船籍港`,`船舶呼号`,`IMO编号`,`船舶种类`,`船体材料`,`造船地点`,`建成日期`,`船舶价值`,`总长`,`型宽`,`型深`,`总吨`,`净吨`,`主机种类`,`主机数目`,`功率`,`推进器种类`,`推进器数目`,`船舶所有人`,`船舶所有人地址`,`法定代表人姓名`,`取得所有权日期`,`发证机关`,`编号`,`发证日期`,`身份证`) value" +
                "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        return update(sql,boatBase.getBoatName(),boatBase.getBoatRegNum(),boatBase.getBoatRegNum(),boatBase.getOldBoatName(),boatBase.getBoatRePort(),boatBase.getOldboatRePort(),boatBase.getBoatCall(),boatBase.getIMO(),boatBase.getBoatType(),boatBase.getBoatMater(),boatBase.getBoatCon(),boatBase.getBoatMkTime(),boatBase.getBoatValue(),boatBase.getBoatLength(),boatBase.getBoatWith(),boatBase.getBoatDepth(),boatBase.getBoatTons(),boatBase.getBoatNetTons(),boatBase.getBoatEnType(),boatBase.getBoatEnNum(),boatBase.getBoatPower(),boatBase.getPropType(),boatBase.getPropNum(),boatBase.getName(),boatBase.getAddress(),boatBase.getLegaler(),boatBase.getOwnDate(),boatBase.getOrg(),boatBase.getOwnNum(),boatBase.getgOwnDate(),boatBase.getIdCard());
    }

    @Override
    public int saveBoatImg(BoatImg boatImg) {
        String sql = "insert into `船舶相片`(`船名`,`船舶相片`,`相片类型`) value(?,?,?)";
        return update(sql,boatImg.getName(),boatImg.getImgFile(),boatImg.getImgType());
    }

    @Override
    public List<BoatBase> queryBoatBases() {
        String sql = "select `船名` boatName,`登记号码` boatRegNum,`曾用名` oldBoatName,`船籍港` boatRePort,`原船籍港` oldboatRePort,`船舶呼号` boatCall,`IMO编号` IMO,`船舶种类` boatType,`船体材料` boatMater,`造船地点` boatCon,`建成日期` boatMkTime,`船舶价值` boatValue,`总长` boatLength,`型宽` boatWith,`型深` boatDepth,`总吨` boatTons,`净吨` boatNetTons,`主机种类` boatEnType,`主机数目` boatEnNum,`功率` boatPower,`推进器种类` boatEnType,`推进器数目` boatEnNum,`船舶所有人` name,`船舶所有人地址` address,`法定代表人姓名` legaler,`取得所有权日期` ownDate,`发证机关` org,`编号` ownNum,`发证日期` gOwnDate,`身份证` idCard from `船舶所有权登记证书`";
        return queryForList(BoatBase.class,sql);
    }

    @Override
    public Integer queryForPageTotalCount() {
        String sql="select count(*) from `船舶所有权登记证书`";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<BoatBase> queryForPageItem(int begin, int pageSize) {
        String sql = "select `船名` boatName,`登记号码` boatRegNum,`曾用名` oldBoatName,`船籍港` boatRePort,`原船籍港` oldboatRePort,`船舶呼号` boatCall,`IMO编号` IMO,`船舶种类` boatType,`船体材料` boatMater,`造船地点` boatCon,`建成日期` boatMkTime,`船舶价值` boatValue,`总长` boatLength,`型宽` boatWith,`型深` boatDepth,`总吨` boatTons,`净吨` boatNetTons,`主机种类` boatEnType,`主机数目` boatEnNum,`功率` boatPower,`推进器种类` propType,`推进器数目` propNum,`船舶所有人` name,`船舶所有人地址` address,`法定代表人姓名` legaler,`取得所有权日期` ownDate,`发证机关` org,`编号` ownNum,`发证日期` gOwnDate,`身份证` idCard from `船舶所有权登记证书` limit ?,?";
        return queryForList(BoatBase.class,sql,begin,pageSize);
    }

    @Override
    public int updateBoatBase(BoatBase boatBase) {
        String sql = "update `船舶所有权登记证书` set `船名`=?,`登记号码`=?,`曾用名`=?,`船籍港`=?,`原船籍港`=?,`船舶呼号`=?,`IMO编号`=?,`船舶种类`=?,`船体材料`=?,`造船地点`=?,`建成日期`=?,`船舶价值`=?,`总长`=?,`型宽`=?,`型深`=?,`总吨`=?,`净吨`=?,`主机种类`=?,`主机数目`=?,`功率`=?,`推进器种类`=?,`推进器数目`=?,`船舶所有人`=?,`船舶所有人地址`=?,`法定代表人姓名`=?,`取得所有权日期`=?,`发证机关`=?,`编号`=?,`发证日期`=?,`身份证`=? where `船名`=?";
        return update(sql,boatBase.getBoatName(),boatBase.getBoatRegNum(),boatBase.getOldBoatName(),boatBase.getBoatRePort(),boatBase.getOldboatRePort(),boatBase.getBoatCall(),boatBase.getIMO(),boatBase.getBoatType(),boatBase.getBoatMater(),boatBase.getBoatCon(),boatBase.getBoatMkTime(),boatBase.getBoatValue(),boatBase.getBoatLength(),boatBase.getBoatWith(),boatBase.getBoatDepth(),boatBase.getBoatTons(),boatBase.getBoatNetTons(),boatBase.getBoatEnType(),boatBase.getBoatEnNum(),boatBase.getBoatPower(),boatBase.getPropType(),boatBase.getPropNum(),boatBase.getName(),boatBase.getAddress(),boatBase.getLegaler(),boatBase.getOwnDate(),boatBase.getOrg(),boatBase.getOwnNum(),boatBase.getgOwnDate(),boatBase.getIdCard(),boatBase.getBoatName());
    }

    @Override
    public BoatBase queryBoatBaseByBoatName(String boatName) {
        String sql="select `船名` boatName,`登记号码` boatRegNum,`曾用名` oldBoatName,`船籍港` boatRePort,`原船籍港` oldboatRePort,`船舶呼号` boatCall,`IMO编号` IMO,`船舶种类` boatType,`船体材料` boatMater,`造船地点` boatCon,`建成日期` boatMkTime,`船舶价值` boatValue,`总长` boatLength,`型宽` boatWith,`型深` boatDepth,`总吨` boatTons,`净吨` boatNetTons,`主机种类` boatEnType,`主机数目` boatEnNum,`功率` boatPower,`推进器种类` propType,`推进器数目` propNum,`船舶所有人` name,`船舶所有人地址` address,`法定代表人姓名` legaler,`取得所有权日期` ownDate,`发证机关` org,`编号` ownNum,`发证日期` gOwnDate,`身份证` idCard from `船舶所有权登记证书` where `船名`=?";
        return queryForOne(BoatBase.class,sql,boatName);
    }

    @Override
    public int deleteBoatBaseByBoatName(String boatName) {
        String sql = "delete from `船舶所有权登记证书` where `船名`=?";
        return update(sql,boatName);
    }
}
