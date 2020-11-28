<%--
  Created by IntelliJ IDEA.
  User: hongsir12
  Date: 2020/11/16
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 后台大布局 - Layui</title>
    <style type="text/css">


    </style>
    <%@include file="/pages/common/header.jsp"%>


</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header layui-bg-cyan">
        <div class="layui-logo" style="background:url(static/img/logo01.png)"></div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    贤心
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退了</a></li>
        </ul>
    </div>


    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll layui-bg-cyan">
            <div title="菜单缩放" class="kit-side-fold"><i class="fa fa-navicon" aria-hidden="true"></i></div>
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree layui-bg-cyan"  lay-filter="test">
                <li class="layui-nav-item ">
                    <a title="资料查询" class="" href="javascript:void(0);">
                        <i class="layui-icon layui-icon-read"></i>
                        <span>资料查询</span>
                    </a>
                    <dl class="layui-nav-child">
                        <dd data-name="BasicInformationInquiry" >
                            <a title="船只基本资料" href="javascript:;">
                                <i class="fa fa-ship"></i>
                                <span>船只基本资料</span></a>
                            <dl class="layui-nav-child">
                                <dd data-name="ownership">
                                    <a data-url="pages/manager/BoatBaselist.jsp" data-id="11" data-title="船只所有权" href="javascript:void(0);"
                                       class="site-demo-active" title="船只所有权"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-username "></i>
                                        <span>船只所有权</span></a>
                                </dd>
                                <dd data-name="CommonInformation">
                                    <a data-url="layui/test/01.jsp" data-id="12" data-title="船只共有情况" href="javascript:void(0);"
                                       class="site-demo-active" title="船只共有情况"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-file-b "></i>
                                        <span>船只共有情况</span></a>
                                </dd>
                                <dd data-name="certificate">
                                    <a data-url="layui/test/02.jsp" data-id="13" data-title="船只拥有证书" href="javascript:void(0);"
                                       class="site-demo-active" title="船只拥有证书"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-tabs "></i>
                                        <span>船只拥有证书</span></a>
                                </dd>
                                <dd data-name="RadioLicence">
                                    <a data-url="pages/manager/index.jsp" data-id="14" data-title="船只电台执照" href="javascript:void(0);"
                                       class="site-demo-active" title="船只电台执照"
                                       data-type="tabAdd">
                                        <i class="fa fa-vcard "></i>
                                        <span>船只电台执照</span></a>
                                </dd>
                                <dd data-name="MaintenanceCertificate">
                                    <a data-url="layui/test/02.jsp" data-id="15" data-title="检修证明" href="javascript:void(0);"
                                       class="site-demo-active" title="检修证明"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-form  "></i>
                                        <span>检修证明</span></a>
                                </dd>
                                <dd data-name="Photo">
                                    <a data-url="layui/test/02.jsp" data-id="16" data-title="船只相片" href="javascript:void(0);"
                                       class="site-demo-active" title="船只相片"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-picture  "></i>
                                        <span>船只相片</span></a>
                                </dd>
                                <dd data-name="Pay">
                                    <a data-url="layui/test/02.jsp" data-id="17" data-title="船只缴费详情" href="javascript:void(0);"
                                       class="site-demo-active" title="船只缴费详情"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-rmb "></i>
                                        <span>船只缴费详情</span></a>
                                </dd>
                            </dl>
                        </dd>
                        <dd data-name="CertificateInformationInquiry" >
                            <a title="船只证书资料" href="javascript:;">
                                <i class="fa fa-newspaper-o"></i>
                                <span>船只证书资料</span></a>
                            <dl class="layui-nav-child">
                                <dd data-name="oilPrevention">
                                    <a data-url="pages/manager/addboatuser.jsp" data-id="18" data-title="防止油污证书" href="javascript:void(0);"
                                       class="site-demo-active" title="防止油污证书"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-you "></i>
                                        <span>防止油污证书</span></a>
                                </dd>
                                <dd data-name="nationality">
                                    <a data-url="layui/test/01.jsp" data-id="19" data-title="国籍证书" href="javascript:void(0);"
                                       class="site-demo-active" title="国籍证书"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-guojia "></i>
                                        <span>国籍证书</span></a>
                                </dd>
                                <dd data-name="RegistrationOfOwnership">
                                    <a data-url="layui/test/02.jsp" data-id="20" data-title="所有权登记证书" href="javascript:void(0);"
                                       class="site-demo-active" title="所有权登记证书"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-ruanjiansuoyouquan "></i>
                                        <span>所有权登记证书</span></a>
                                </dd>
                                <dd data-name="dangerousCargo">
                                    <a data-url="pages/manager/index.jsp" data-id="21" data-title="运载危险品证书" href="javascript:void(0);"
                                       class="site-demo-active" title="运载危险品证书"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-weixianpinguanli-"></i>
                                        <span>运载危险品证书</span></a>
                                </dd>
                                <dd data-name="Loadline">
                                    <a data-url="layui/test/02.jsp" data-id="22" data-title="载重线证书" href="javascript:void(0);"
                                       class="site-demo-active" title="载重线证书"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-zaizhong"></i>
                                        <span>载重线证书</span></a>
                                </dd>
                                <dd data-name="minimumPersonnelEquipped">
                                    <a data-url="layui/test/02.jsp" data-id="23" data-title="最低安全配员证书" href="javascript:void(0);"
                                       class="site-demo-active" title="最低安全配员证书"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-anquanyuan "></i>
                                        <span>最低安全配员证书</span></a>
                                </dd>
                                <dd data-name="HKandMacaoOperations">
                                    <a data-url="layui/test/02.jsp" data-id="24" data-title="港澳航线营运证书" href="javascript:void(0);"
                                       class="site-demo-active" title="港澳航线营运证书"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-hangxian"></i>
                                        <span>港澳航线营运证书</span></a>
                                </dd>
                                <dd data-name="HKandMacaoBoat">
                                    <a data-url="layui/test/02.jsp" data-id="25" data-title="港澳船只证书" href="javascript:void(0);"
                                       class="site-demo-active" title="港澳船只证书"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-chuan"></i>
                                        <span>港澳船只证书</span></a>
                                </dd>
                                <dd data-name="airworthiness">
                                    <a data-url="layui/test/02.jsp" data-id="26" data-title="货船适航证书" href="javascript:void(0);"
                                       class="site-demo-active" title="货船适航证书"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-huochuan"></i>
                                        <span>货船适航证书</span></a>
                                </dd>
                            </dl>
                        </dd>
                        <dd data-name="ManageHisTab" >
                            <a title="处理历史表" href="javascript:;">
                                <i class="fa fa-history"></i>
                                <span>处理历史表</span></a>
                            <dl class="layui-nav-child">
                                <dd data-name="HKandMacaoCertification">
                                    <a data-url="pages/manager/addboatuser.jsp" data-id="27" data-title="港澳证明" href="javascript:void(0);"
                                       class="site-demo-active" title="港澳证明"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-xianggang"></i>
                                        <span>港澳证明</span></a>
                                </dd>
                                <dd data-name="BoilerInspection">
                                    <a data-url="layui/test/01.jsp" data-id="28" data-title="锅炉检验" href="javascript:void(0);"
                                       class="site-demo-active" title="锅炉检验"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-file-b "></i>
                                        <span>锅炉检验</span></a>
                                </dd>
                                <dd data-name="PropellerShaftInspection">
                                    <a data-url="layui/test/02.jsp" data-id="29" data-title="螺旋桨尾轴检验" href="javascript:void(0);"
                                       class="site-demo-active" title="螺旋桨尾轴检验"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-car_windpsd"></i>
                                        <span>螺旋桨尾轴检验</span></a>
                                </dd>
                                <dd data-name="yearInspection">
                                    <a data-url="pages/manager/index.jsp" data-id="30" data-title="年度检验照" href="javascript:void(0);"
                                       class="site-demo-active" title="年度检验"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-niandu"></i>
                                        <span>年度检验</span></a>
                                </dd>
                                <dd data-name="StaffingInspection">
                                    <a data-url="layui/test/02.jsp" data-id="31" data-title="配员证书检验" href="javascript:void(0);"
                                       class="site-demo-active" title="配员证书检验"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-form  "></i>
                                        <span>配员证书检验</span></a>
                                </dd>
                                <dd data-name="OperationInspection">
                                    <a data-url="layui/test/02.jsp" data-id="32" data-title="营运证书检验" href="javascript:void(0);"
                                       class="site-demo-active" title="营运证书检验"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-cf-c35"></i>
                                        <span>营运证书检验</span></a>
                                </dd>
                                <dd data-name="OilInspection">
                                    <a data-url="layui/test/02.jsp" data-id="33" data-title="油污证书检验" href="javascript:void(0);"
                                       class="site-demo-active" title="油污证书检验"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-you"></i>
                                        <span>油污证书检验</span></a>
                                </dd>
                                <dd data-name="LoadlineInspection">
                                    <a data-url="layui/test/02.jsp" data-id="34" data-title="载重线证书检验" href="javascript:void(0);"
                                       class="site-demo-active" title="载重线证书检验"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-zaizhong"></i>
                                        <span>载重线证书检验</span></a>
                                </dd>
                                <dd data-name="dangerousCargoInspection">
                                    <a data-url="layui/test/02.jsp" data-id="35" data-title="危险品证书检验" href="javascript:void(0);"
                                       class="site-demo-active" title="危险品证书检验"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-weixianpinguanli-"></i>
                                        <span>危险品证书检验</span></a>
                                </dd>
                                <dd data-name="dockInspection">
                                    <a data-url="layui/test/02.jsp" data-id="36" data-title="船坞内检验" href="javascript:void(0);"
                                       class="site-demo-active" title="船坞内检验"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-costoms-alearance"></i>
                                        <span>船坞内检验</span></a>
                                </dd>
                            </dl>
                        </dd>

                    </dl>
                </li>

                <li class="layui-nav-item ">
                    <a title="资料管理" class="" href="javascript:void(0);">
                        <i class="layui-icon layui-icon-app"></i>
                        <span>资料管理</span>
                    </a>
                    <dl class="layui-nav-child">
                        <dd data-name="BasicInformationManage" >
                            <a title="船只基本资料管理" href="javascript:;">
                                <i class="fa fa-ship"></i>
                                <span>船只基本资料管理</span></a>
                            <dl class="layui-nav-child">
                                <dd data-name="ownership">
                                    <a data-url="pages/manager/BoatBaselist.jsp" data-id="37" data-title="船只所有权管理" href="javascript:void(0);"
                                       class="site-demo-active" title="船只所有权管理"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-username "></i>
                                        <span>船只所有权管理</span></a>
                                </dd>
                                <dd data-name="CommonInformation">
                                    <a data-url="layui/test/01.jsp" data-id="38" data-title="船只共有情况管理" href="javascript:void(0);"
                                       class="site-demo-active" title="船只共有情况管理"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-file-b "></i>
                                        <span>船只共有情况管理</span></a>
                                </dd>
                                <dd data-name="certificate">
                                    <a data-url="layui/test/02.jsp" data-id="39" data-title="船只拥有证书管理" href="javascript:void(0);"
                                       class="site-demo-active" title="船只拥有证书管理"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-tabs "></i>
                                        <span>船只拥有证书管理</span></a>
                                </dd>
                                <dd data-name="RadioLicence">
                                    <a data-url="pages/manager/index.jsp" data-id="40" data-title="船只电台执照管理" href="javascript:void(0);"
                                       class="site-demo-active" title="船只电台执照管理"
                                       data-type="tabAdd">
                                        <i class="fa fa-vcard "></i>
                                        <span>船只电台执照管理</span></a>
                                </dd>
                                <dd data-name="MaintenanceCertificate">
                                    <a data-url="layui/test/02.jsp" data-id="41" data-title="检修证明管理" href="javascript:void(0);"
                                       class="site-demo-active" title="检修证明管理"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-form  "></i>
                                        <span>检修证明管理</span></a>
                                </dd>
                                <dd data-name="Photo">
                                    <a data-url="layui/test/02.jsp" data-id="42" data-title="船只相片管理" href="javascript:void(0);"
                                       class="site-demo-active" title="船只相片管理"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-picture  "></i>
                                        <span>船只相片管理</span></a>
                                </dd>
                                <dd data-name="Pay">
                                    <a data-url="layui/test/02.jsp" data-id="43" data-title="船只缴费管理" href="javascript:void(0);"
                                       class="site-demo-active" title="船只缴费管理"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-rmb "></i>
                                        <span>船只缴费管理</span></a>
                                </dd>
                            </dl>
                        </dd>
                        <dd data-name="CertificateInformationManage" >
                            <a title="船只证书资料管理" href="javascript:;">
                                <i class="fa fa-newspaper-o"></i>
                                <span>船只证书资料管理</span></a>
                            <dl class="layui-nav-child">
                                <dd data-name="oilPrevention">
                                    <a data-url="pages/manager/addboatuser.jsp" data-id="44" data-title="防止油污证书管理" href="javascript:void(0);"
                                       class="site-demo-active" title="防止油污证书管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-you "></i>
                                        <span>防止油污证书管理</span></a>
                                </dd>
                                <dd data-name="nationality">
                                    <a data-url="layui/test/01.jsp" data-id="45" data-title="国籍证书管理" href="javascript:void(0);"
                                       class="site-demo-active" title="国籍证书管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-guojia "></i>
                                        <span>国籍证书管理</span></a>
                                </dd>
                                <dd data-name="RegistrationOfOwnership">
                                    <a data-url="pages/manager/addboatuser.jsp" data-id="46" data-title="所有权登记证书管理" href="javascript:void(0);"
                                       class="site-demo-active" title="所有权登记证书管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-ruanjiansuoyouquan "></i>
                                        <span>所有权登记证书管理</span></a>
                                </dd>
                                <dd data-name="dangerousCargo">
                                    <a data-url="pages/manager/index.jsp" data-id="47" data-title="运载危险品证书管理" href="javascript:void(0);"
                                       class="site-demo-active" title="运载危险品证书管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-weixianpinguanli-"></i>
                                        <span>运载危险品证书管理</span></a>
                                </dd>
                                <dd data-name="Loadline">
                                    <a data-url="layui/test/02.jsp" data-id="48" data-title="载重线证书管理" href="javascript:void(0);"
                                       class="site-demo-active" title="载重线证书管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-zaizhong"></i>
                                        <span>载重线证书管理</span></a>
                                </dd>
                                <dd data-name="minimumPersonnelEquipped">
                                    <a data-url="layui/test/02.jsp" data-id="49" data-title="最低安全配员证书管理" href="javascript:void(0);"
                                       class="site-demo-active" title="最低安全配员证书管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-anquanyuan "></i>
                                        <span>最低安全配员证书管理</span></a>
                                </dd>
                                <dd data-name="HKandMacaoOperations">
                                    <a data-url="pages/manager/BoatOperationlist.jsp" data-id="50" data-title="港澳航线营运证书管理" href="javascript:void(0);"
                                       class="site-demo-active" title="港澳航线营运证书管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-hangxian"></i>
                                        <span>港澳航线营运证书管理</span></a>
                                </dd>
                                <dd data-name="HKandMacaoBoat">
                                    <a data-url="layui/test/02.jsp" data-id="51" data-title="港澳船只证书管理" href="javascript:void(0);"
                                       class="site-demo-active" title="港澳船只证书管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-chuan"></i>
                                        <span>港澳船只证书管理</span></a>
                                </dd>
                                <dd data-name="airworthiness">
                                    <a data-url="layui/test/02.jsp" data-id="52" data-title="货船适航证书管理" href="javascript:void(0);"
                                       class="site-demo-active" title="货船适航证书管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-huochuan"></i>
                                        <span>货船适航证书管理</span></a>
                                </dd>
                            </dl>
                        </dd>
                        <dd data-name="ManageHisTab" >
                            <a title="处理历史表管理" href="javascript:;">
                                <i class="fa fa-history"></i>
                                <span>处理历史表管理</span></a>
                            <dl class="layui-nav-child">
                                <dd data-name="HKandMacaoCertification">
                                    <a data-url="pages/manager/addboatuser.jsp" data-id="53" data-title="港澳证明管理" href="javascript:void(0);"
                                       class="site-demo-active" title="港澳证明管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-xianggang"></i>
                                        <span>港澳证明管理</span></a>
                                </dd>
                                <dd data-name="BoilerInspection">
                                    <a data-url="layui/test/01.jsp" data-id="54" data-title="锅炉检验管理" href="javascript:void(0);"
                                       class="site-demo-active" title="锅炉检验管理"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-file-b "></i>
                                        <span>锅炉检验管理</span></a>
                                </dd>
                                <dd data-name="PropellerShaftInspection">
                                    <a data-url="layui/test/02.jsp" data-id="55" data-title="螺旋桨尾轴检验管理" href="javascript:void(0);"
                                       class="site-demo-active" title="螺旋桨尾轴检验管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-car_windpsd"></i>
                                        <span>螺旋桨尾轴检验管理</span></a>
                                </dd>
                                <dd data-name="yearInspection">
                                    <a data-url="pages/manager/index.jsp" data-id="56" data-title="年度检验照管理" href="javascript:void(0);"
                                       class="site-demo-active" title="年度检验管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-niandu"></i>
                                        <span>年度检验管理</span></a>
                                </dd>
                                <dd data-name="StaffingInspection">
                                    <a data-url="layui/test/02.jsp" data-id="57" data-title="配员证书检验管理" href="javascript:void(0);"
                                       class="site-demo-active" title="配员证书检验管理"
                                       data-type="tabAdd">
                                        <i class="layui-icon layui-icon-form  "></i>
                                        <span>配员证书检验管理</span></a>
                                </dd>
                                <dd data-name="OperationInspection">
                                    <a data-url="layui/test/02.jsp" data-id="58" data-title="营运证书检验管理" href="javascript:void(0);"
                                       class="site-demo-active" title="营运证书检验管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-cf-c35"></i>
                                        <span>营运证书检验管理</span></a>
                                </dd>
                                <dd data-name="OilInspection">
                                    <a data-url="layui/test/02.jsp" data-id="59" data-title="油污证书检验管理" href="javascript:void(0);"
                                       class="site-demo-active" title="油污证书检验管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-you"></i>
                                        <span>油污证书检验管理</span></a>
                                </dd>
                                <dd data-name="LoadlineInspection">
                                    <a data-url="layui/test/02.jsp" data-id="60" data-title="载重线证书检验管理" href="javascript:void(0);"
                                       class="site-demo-active" title="载重线证书检验管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-zaizhong"></i>
                                        <span>载重线证书检验管理</span></a>
                                </dd>
                                <dd data-name="dangerousCargoInspection">
                                    <a data-url="layui/test/02.jsp" data-id="61" data-title="危险品证书检验管理" href="javascript:void(0);"
                                       class="site-demo-active" title="危险品证书检验管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-weixianpinguanli-"></i>
                                        <span>危险品证书检验管理</span></a>
                                </dd>
                                <dd data-name="dockInspection">
                                    <a data-url="layui/test/02.jsp" data-id="62" data-title="船坞内检验管理" href="javascript:void(0);"
                                       class="site-demo-active" title="船坞内检验管理"
                                       data-type="tabAdd">
                                        <i class="iconfont iconAli-costoms-alearance"></i>
                                        <span>船坞内检验管理</span></a>
                                </dd>
                            </dl>
                        </dd>

                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a title="系统管理" href="javascript:;">
                        <i class="layui-icon layui-icon-template-1"></i>
                        <span>系统管理</span></a>
                    <dl class="layui-nav-child">
                        <dd data-name="userManager">
                            <a data-url="pages/manager/userlist.jsp" data-id="63" data-title="用户管理" href="javascript:void(0);"
                               class="site-demo-active" title="用户管理"
                               data-type="tabAdd">
                                <i class="layui-icon layui-icon-user"></i>
                                <span>用户管理</span></a>
                        </dd>
                        <dd data-name="powerManager">
                            <a data-url="layui/test/02.jsp" data-id="64" data-title="权限管理" href="javascript:void(0);"
                               class="site-demo-active" title="权限管理"
                               data-type="tabAdd">
                                <i class="layui-icon layui-icon-key"></i>
                                <span>权限管理</span></a>
                        </dd>
                        <dd data-name="operationManager">
                            <a data-url="layui/test/02.jsp" data-id="65" data-title="操作查询" href="javascript:void(0);"
                               class="site-demo-active" title="操作查询"
                               data-type="tabAdd">
                                <i class="layui-icon layui-icon-survey"></i>
                                <span>操作查询</span></a>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
        <%--<div class="layadmin-pagetabs">
            <div class="layui-tab" lay-filter="demo" lay-allowclose="true">
                <ul class="layui-tab-title">
                    <li class="layui-this" lay-id="11">网站设置</li>
                    <li lay-id="22">用户管理</li>
                    <li lay-id="33">权限分配</li>
                    <li lay-id="44">商品管理</li>
                    <li lay-id="55">订单管理</li>
                </ul>
            </div>
        </div>--%>

    <%--<div class=" layui-xuanxiangka" >
        <!-- 选项卡区域 -->
        <div class="xuanxiangka-tab" lay-allowclose="true" lay-filter="layadmin-layout-tabs">
            <ul class="xuanxiangka-tab-title" id="LAY_app_tabsheader" style="left: 0px;">
                <li  class="layui-this">
                    <i class="layui-icon layui-icon-home"></i>
                    &lt;%&ndash;<i class="layui-icon layui-unselect layui-tab-close">ဆ</i>&ndash;%&gt;
                </li>

            </ul>
        </div>
    </div>--%>

    <div class="layui-tab layui-tab-brief tab-diy" lay-filter="home-tabs" lay-allowclose="true">
        <ul class="layui-tab-title" style="height: 35px">
        </ul>


        <%--<ul class="rightmenu" style="display:block;position: absolute;">
            <li data-type="refresh">刷新</li>
            <li data-type="closeOthers">关闭其他</li>
            <li data-type="closeRight">关闭右侧所有</li>
            <li data-type="closeAll">关闭所有</li>
        </ul>--%>
        <div class="layui-tab-content" style="height: 772px">
        </div>
    </div>

    <%--<div class="layui-body ">
        <!-- 内容主体区域 -->

            <iframe id="desk" name="desk" frameborder="no" width="100%" height="100%" src="layui/test/01.jsp"  style="overflow:auto"></iframe>

    </div>--%>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>

<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var $ = layui.$;
        var element = layui.element;

        //触发事件
        var active = {
            //在这里给active绑定几项事件，后面可通过active调用这些事件
            tabAdd: function (url, id, name) {
                //新增一个Tab项 传入三个参数，分别是tab页面的地址，还有一个规定的id，对应其标题，是标签中data-id的属性值
                //关于tabAdd的方法所传入的参数可看layui的开发文档中基础方法部分
                element.tabAdd('home-tabs', {
                    title: name,
                    content: '<iframe id="aaa" data-frameid="' + id + '" scrolling="auto" frameborder="0" src="' + url +
                        '" style="width:100%;height:100%;overflow: auto"></iframe>',
                    id: id //规定好的id
                })
                FrameWH(); //计算ifram层的大小
                //通过鼠标mouseover事件  动态将新增的tab下的li标签绑定鼠标右键功能的菜单
                //下面的json.id是动态新增Tab的id，一定要传入这个id,避免重复加载mouseover数据
                $(".layui-tab-title li[lay-id=" + id + "]").mouseover(function () {
                    var tabId = $(this).attr("lay-id");
                    CustomRightClick(tabId); //给tab绑定右击事件

                });
            },
            tabChange: function (id) {
                //切换到指定Tab项
                element.tabChange('home-tabs', id); //根据传入的id传入到指定的tab项
            },
            tabDelete: function (id) {
                element.tabDelete('home-tabs', id); //删除
            },
            tabRefresh: function (id) { //刷新页面
                $("iframe[data-frameid='" + id + "']").attr("src", $("iframe[data-frameid='" + id + "']").attr("src")) //刷新框架
            }
        };

        //当点击有site-demo-active属性的标签时，即左侧菜单栏中内容 ，触发点击事件
        $('.site-demo-active').on('click', function () {
            var dataid = $(this);

            //这时会判断右侧.layui-tab-title属性下的有lay-id属性的li的数目，即已经打开的tab项数目
            if ($(".layui-tab-title li[lay-id]").length <= 0) {
                //如果比零小，则直接打开新的tab项
                active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"), dataid.attr("data-title"));
            } else {
                //否则判断该tab项是否以及存在

                var isData = false; //初始化一个标志，为false说明未打开该tab项 为true则说明已有
                $.each($(".layui-tab-title li[lay-id]"), function () {
                    //如果点击左侧菜单栏所传入的id 在右侧tab项中的lay-id属性可以找到，则说明该tab项已经打开
                    if ($(this).attr("lay-id") == dataid.attr("data-id")) {
                        isData = true;
                    }
                })
                if (isData == false) {
                    //标志为false 新增一个tab项
                    active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"), dataid.attr("data-title"));
                }
            }
            //最后不管是否新增tab，最后都转到要打开的选项页面上
            active.tabChange(dataid.attr("data-id"));
        });



        //导航栏点击选中时关闭其他选项卡
        $('.layui-nav-item').click(function () {
            $(this).siblings('li').attr('class', 'layui-nav-item');
        });

        function FrameWH() {
            var h = $(window).height() - 41 - 10 - 60 - 10 - 44 - 10;
            $("iframe").css("height", h + "px");
        }

        $(window).resize(function () {
            FrameWH();
        })

        //打开默认页面
        active.tabAdd("static/img/船1.jpg", 10, "主页");
        active.tabChange(10);
    });

    //左侧菜单伸缩功能
    var isShow = true;  //定义一个标志位
    $('.kit-side-fold').click(function(){
        //选择出所有的span，并判断是不是hidden
        $('.layui-nav-item span').each(function(){
            if($(this).is(':hidden')){
                $(this).show();
            }else{
                $(this).hide();
            }
        });
        //判断isshow的状态
        if(isShow){
            $('.layui-side.layui-bg-black').width(60); //设置宽度
            $('.kit-side-fold i').css('margin-right', '70%');  //修改图标的位置
            //将footer和body的宽度修改
            $('.layui-body').css('left', 60+'px');
            $('.layui-footer').css('left', 60+'px');
            $('.layui-xuanxiangka').css('left', 60+'px');
            $('.layui-tab').css('left', 60+'px');
            //将二级导航栏隐藏
            $('dd span').each(function(){
                $(this).hide();
            });
            //修改标志位
            isShow =false;
        }else{
            $('.layui-side.layui-bg-black').width(200);
            $('.kit-side-fold i').css('margin-right', '10%');
            $('.layui-body').css('left', 200+'px');
            $('.layui-footer').css('left', 200+'px');
            $('.layui-xuanxiangka').css('left', 200+'px');
            $('.layui-tab').css('left', 200+'px');
            $('dd span').each(function(){
                $(this).show();
            });
            isShow =true;
        }
    });

</script>
</body>
</html>