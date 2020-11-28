package com.boat.pojo;

public class BoatImg {
    private String name;
    private String imgFile="static\\img\\船1.jpg";
    private String imgType;

    public BoatImg() {
    }

    public BoatImg(String name, String imgFile, String imgType) {
        this.name = name;
        if(imgFile!=null&&!"".equals(imgFile))
            this.imgFile = imgFile;
        this.imgType = imgType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImgFile() {
        return imgFile;
    }

    public void setImgFile(String imgFile) {
        if(imgFile!=null&&!"".equals(imgFile))
            this.imgFile = imgFile;
    }

    public String getImgType() {
        return imgType;
    }

    public void setImgType(String imgType) {
        this.imgType = imgType;
    }

    @Override
    public String toString() {
        return "BoatImg{" +
                "name='" + name + '\'' +
                ", imgFile='" + imgFile + '\'' +
                ", imgType='" + imgType + '\'' +
                '}';
    }
}
