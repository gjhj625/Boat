package com.boat.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class BoatOperateCer {
    private String boatName;//船名
    private String cerNo;//证书编号
    private Integer passNum;//载客定额
    private BigDecimal cargo;//载货定额
    private String economic;//经济性质
    private String shipOperator;//船舶经营人
    private String org;//批准机关
    private String approvalNo;//批准文号
    private String passRoutes;//客运航线
    private String cargoRoutes;//货运航线
    private Date getCerDate;//发证日期
    private Date effectiveDate;//有效日期至

    public BoatOperateCer() {
    }

    public BoatOperateCer(String boatName, String cerNo, Integer passNum, BigDecimal cargo, String economic, String shipOperator, String org, String approvalNo, String passRoutes, String cargoRoutes, Date getCerDate, Date effectiveDate) {
        this.boatName = boatName;
        this.cerNo = cerNo;
        this.passNum = passNum;
        this.cargo = cargo;
        this.economic = economic;
        this.shipOperator = shipOperator;
        this.org = org;
        this.approvalNo = approvalNo;
        this.passRoutes = passRoutes;
        this.cargoRoutes = cargoRoutes;
        this.getCerDate = getCerDate;
        this.effectiveDate = effectiveDate;
    }

    public String getBoatName() {
        return boatName;
    }

    public void setBoatName(String boatName) {
        this.boatName = boatName;
    }

    public String getCerNo() {
        return cerNo;
    }

    public void setCerNo(String cerNo) {
        this.cerNo = cerNo;
    }

    public Integer getPassNum() {
        return passNum;
    }

    public void setPassNum(Integer passNum) {
        this.passNum = passNum;
    }

    public BigDecimal getCargo() {
        return cargo;
    }

    public void setCargo(BigDecimal cargo) {
        this.cargo = cargo;
    }

    public String getEconomic() {
        return economic;
    }

    public void setEconomic(String economic) {
        this.economic = economic;
    }

    public String getShipOperator() {
        return shipOperator;
    }

    public void setShipOperator(String shipOperator) {
        this.shipOperator = shipOperator;
    }

    public String getOrg() {
        return org;
    }

    public void setOrg(String org) {
        this.org = org;
    }

    public String getApprovalNo() {
        return approvalNo;
    }

    public void setApprovalNo(String approvalNo) {
        this.approvalNo = approvalNo;
    }

    public String getPassRoutes() {
        return passRoutes;
    }

    public void setPassRoutes(String passRoutes) {
        this.passRoutes = passRoutes;
    }

    public String getCargoRoutes() {
        return cargoRoutes;
    }

    public void setCargoRoutes(String cargoRoutes) {
        this.cargoRoutes = cargoRoutes;
    }

    public Date getGetCerDate() {
        return getCerDate;
    }

    public void setGetCerDate(Date getCerDate) {
        this.getCerDate = getCerDate;
    }

    public Date getEffectiveDate() {
        return effectiveDate;
    }

    public void setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
    }

    @Override
    public String toString() {
        return "BoatOperateCer{" +
                "boatName='" + boatName + '\'' +
                ", cerNo='" + cerNo + '\'' +
                ", passNum=" + passNum +
                ", cargo=" + cargo +
                ", economic='" + economic + '\'' +
                ", shipOperator='" + shipOperator + '\'' +
                ", org='" + org + '\'' +
                ", approvalNo='" + approvalNo + '\'' +
                ", passRoutes='" + passRoutes + '\'' +
                ", cargoRoutes='" + cargoRoutes + '\'' +
                ", getCerDate=" + getCerDate +
                ", effectiveDate=" + effectiveDate +
                '}';
    }
}
