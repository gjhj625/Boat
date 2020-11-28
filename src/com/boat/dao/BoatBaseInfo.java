package com.boat.dao;

import com.boat.pojo.BoatBase;
import com.boat.pojo.BoatImg;

import java.util.List;

public interface BoatBaseInfo {
    /**
     * 保存船舶基本信息
     * @return
     */
    public int saveBoatBase(BoatBase boatBase);

    /**
     *根据传入的BoatImg类保存船名对应的船舶照片
     * @param boatImg
     * @return
     */
    public int saveBoatImg(BoatImg boatImg);

    /**
     * 查询所有船舶基本信息
     * @return
     */
    public List<BoatBase> queryBoatBases();

    /**
     * 数据总数
     * @return
     */
    Integer queryForPageTotalCount();

    /**
     * 查询分页的数据
     * @param begin
     * @param pageSize
     * @return
     */
    List<BoatBase> queryForPageItem(int begin, int pageSize);

    /**
     * 修改船舶基本表单项
     * @param boatBase
     * @return
     */
    public int updateBoatBase(BoatBase boatBase);

    /**
     * 更具船名查询船只的基本信息
     * @param boatName
     * @return
     */
    public BoatBase queryBoatBaseByBoatName(String boatName);

    /**
     * 根据船名删除船只信息
     * @param boatName
     * @return
     */
    public int deleteBoatBaseByBoatName(String boatName);

}
