package com.boat.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class BoatBase {
    private String idCard;//身份证
    private String name;//船主姓名
    private String address;//船舶所有人详细住址
    private String boatName;//船只名称
    private String oldBoatName;//曾用名
    private String boatType;//船舶类型
    private String boatMater;//船体材料
    //private String boatModel;//主机种类,机型
    private String boatRePort;//船籍港
    private String boatCon;//建造厂
    private String boatRegNum;//初次登记号/登记号码
//    private String boatRunNum;//营运证号
//    private String boatEnTime;//入户时间
//    private String boatMvTime;// 迁出时间
    private Date boatMkTime;//建成时间
    private BigDecimal boatLength;//总长
    private BigDecimal boatWith;//型宽
    private BigDecimal boatDepth;//型深
    private BigDecimal boatTons;//总吨
    private BigDecimal boatNetTons;//净吨
    private String oldboatRePort;//原船籍港
    private String boatCall;//船舶呼号
    private String IMO;//IMO编号
    private double boatValue;//船舶价值
    private BigDecimal boatPower;//主机功率
    private String boatEnType;//主机种类
    private Integer boatEnNum;//主机数目
    private String propType;//推进器种类
    private Integer propNum;//推进器数量
    private String legaler;//法定代表人姓名
    private Date ownDate;//取得所有权日期
    private String org;//发证机关
    private String ownNum;//编号
    private Date gOwnDate;//发证日期

    public BoatBase(String idCard, String name, String address, String boatName, String oldBoatName, String boatType, String boatMater, String boatRePort, String boatCon, String boatRegNum,Date boatMkTime, BigDecimal boatLength, BigDecimal boatWith, BigDecimal boatDepth, BigDecimal boatTons, BigDecimal boatNetTons, String oldboatRePort, String boatCall, String IMO, double boatValue, BigDecimal boatPower, String boatEnType, Integer boatEnNum, String propType, Integer propNum, String legaler, Date ownDate, String org, String ownNum, Date gOwnDate) {
        this.idCard = idCard;
        this.name = name;
        this.address = address;
        this.boatName = boatName;
        this.oldBoatName = oldBoatName;
        this.boatType = boatType;
        this.boatMater = boatMater;
        this.boatRePort = boatRePort;
        this.boatCon = boatCon;
        this.boatRegNum = boatRegNum;
        this.boatMkTime = boatMkTime;
        this.boatLength = boatLength;
        this.boatWith = boatWith;
        this.boatDepth = boatDepth;
        this.boatTons = boatTons;
        this.boatNetTons = boatNetTons;
        this.oldboatRePort = oldboatRePort;
        this.boatCall = boatCall;
        this.IMO = IMO;
        this.boatValue = boatValue;
        this.boatPower = boatPower;
        this.boatEnType = boatEnType;
        this.boatEnNum = boatEnNum;
        this.propType = propType;
        this.propNum = propNum;
        this.legaler = legaler;
        this.ownDate = ownDate;
        this.org = org;
        this.ownNum = ownNum;
        this.gOwnDate = gOwnDate;
    }

    public BoatBase() {
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBoatName() {
        return boatName;
    }

    public void setBoatName(String boatName) {
        this.boatName = boatName;
    }

    public String getOldBoatName() {
        return oldBoatName;
    }

    public void setOldBoatName(String oldBoatName) {
        this.oldBoatName = oldBoatName;
    }

    public String getBoatType() {
        return boatType;
    }

    public void setBoatType(String boatType) {
        this.boatType = boatType;
    }

    public String getBoatMater() {
        return boatMater;
    }

    public void setBoatMater(String boatMater) {
        this.boatMater = boatMater;
    }


    public String getBoatRePort() {
        return boatRePort;
    }

    public void setBoatRePort(String boatRePort) {
        this.boatRePort = boatRePort;
    }

    public String getBoatCon() {
        return boatCon;
    }

    public void setBoatCon(String boatCon) {
        this.boatCon = boatCon;
    }

    public String getBoatRegNum() {
        return boatRegNum;
    }

    public void setBoatRegNum(String boatRegNum) {
        this.boatRegNum = boatRegNum;
    }

    public Date getBoatMkTime() {
        return boatMkTime;
    }

    public void setBoatMkTime(Date boatMkTime) {
        this.boatMkTime = boatMkTime;
    }

    public BigDecimal getBoatLength() {
        return boatLength;
    }

    public void setBoatLength(BigDecimal boatLength) {
        this.boatLength = boatLength;
    }

    public BigDecimal getBoatWith() {
        return boatWith;
    }

    public void setBoatWith(BigDecimal boatWith) {
        this.boatWith = boatWith;
    }

    public BigDecimal getBoatDepth() {
        return boatDepth;
    }

    public void setBoatDepth(BigDecimal boatDepth) {
        this.boatDepth = boatDepth;
    }

    public BigDecimal getBoatTons() {
        return boatTons;
    }

    public void setBoatTons(BigDecimal boatTons) {
        this.boatTons = boatTons;
    }

    public BigDecimal getBoatNetTons() {
        return boatNetTons;
    }

    public void setBoatNetTons(BigDecimal boatNetTons) {
        this.boatNetTons = boatNetTons;
    }

    public String getOldboatRePort() {
        return oldboatRePort;
    }

    public void setOldboatRePort(String oldboatRePort) {
        this.oldboatRePort = oldboatRePort;
    }

    public String getBoatCall() {
        return boatCall;
    }

    public void setBoatCall(String boatCall) {
        this.boatCall = boatCall;
    }

    public String getIMO() {
        return IMO;
    }

    public void setIMO(String IMO) {
        this.IMO = IMO;
    }

    public double getBoatValue() {
        return boatValue;
    }

    public void setBoatValue(double boatValue) {
        this.boatValue = boatValue;
    }

    public BigDecimal getBoatPower() {
        return boatPower;
    }

    public void setBoatPower(BigDecimal boatPower) {
        this.boatPower = boatPower;
    }

    public String getBoatEnType() {
        return boatEnType;
    }

    public void setBoatEnType(String boatEnType) {
        this.boatEnType = boatEnType;
    }

    public Integer getBoatEnNum() {
        return boatEnNum;
    }

    public void setBoatEnNum(Integer boatEnNum) {
        this.boatEnNum = boatEnNum;
    }

    public String getPropType() {
        return propType;
    }

    public void setPropType(String propType) {
        this.propType = propType;
    }

    public Integer getPropNum() {
        return propNum;
    }

    public void setPropNum(Integer propNum) {
        this.propNum = propNum;
    }

    public String getLegaler() {
        return legaler;
    }

    public void setLegaler(String legaler) {
        this.legaler = legaler;
    }

    public Date getOwnDate() {
        return ownDate;
    }

    public void setOwnDate(Date ownDate) {
        this.ownDate = ownDate;
    }

    public String getOrg() {
        return org;
    }

    public void setOrg(String org) {
        this.org = org;
    }

    public String getOwnNum() {
        return ownNum;
    }

    public void setOwnNum(String ownNum) {
        this.ownNum = ownNum;
    }

    public Date getgOwnDate() {
        return gOwnDate;
    }

    public void setgOwnDate(Date gOwnDate) {
        this.gOwnDate = gOwnDate;
    }


    @Override
    public String toString() {
        return "BoatBase{" +
                "idCard='" + idCard + '\'' +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", boatName='" + boatName + '\'' +
                ", oldBoatName='" + oldBoatName + '\'' +
                ", boatType='" + boatType + '\'' +
                ", boatMater='" + boatMater + '\'' +
                ", boatRePort='" + boatRePort + '\'' +
                ", boatCon='" + boatCon + '\'' +
                ", boatRegNum='" + boatRegNum + '\'' +
                ", boatMkTime=" + boatMkTime +
                ", boatLength=" + boatLength +
                ", boatWith=" + boatWith +
                ", boatDepth=" + boatDepth +
                ", boatTons=" + boatTons +
                ", boatNetTons=" + boatNetTons +
                ", oldboatRePort='" + oldboatRePort + '\'' +
                ", boatCall='" + boatCall + '\'' +
                ", IMO='" + IMO + '\'' +
                ", boatValue=" + boatValue +
                ", boatPower=" + boatPower +
                ", boatEnType='" + boatEnType + '\'' +
                ", boatEnNum=" + boatEnNum +
                ", propType='" + propType + '\'' +
                ", propNum=" + propNum +
                ", legaler='" + legaler + '\'' +
                ", ownDate=" + ownDate +
                ", org='" + org + '\'' +
                ", ownNum='" + ownNum + '\'' +
                ", gOwnDate=" + gOwnDate +
                '}';
    }
}
