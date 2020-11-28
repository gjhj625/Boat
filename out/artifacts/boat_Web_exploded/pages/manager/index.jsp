<%--
  Created by IntelliJ IDEA.
  User: 11372
  Date: 2020/11/6
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>管理主页</title>
    <%@include file="/pages/common/header.jsp"%>
    <script type="text/javascript">
        //JavaScript代码区域
        layui.use(['element','form'], function(){
            var element = layui.element;
            var form = layui.form;
            form.on('submit(formDemo)', function(data){
                //layer.msg(JSON.stringify(data.field));
                //return false;
            });
        });
    </script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">船舶管理系统后台</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">船只信息</a>
                <dl class="layui-nav-child">
                    <dd><a href="pages/manager/addboatuser.jsp" target="contain">船只基本资料</a></dd>
                    <dd><hr></dd>
                    <dd><a href="">船只营运证书资料</a></dd>
                    <dd><hr></dd>
                    <dd><a href="">船只检验证书资料</a></dd>
                    <dd><hr></dd>
                    <dd><a href="">船只安检证书资料</a></dd>
                    <dd><hr></dd>
                    <dd><a href="">船只国籍配员证书资料</a></dd>
                    <dd><hr></dd>
                    <dd><a href="">船只国籍配员证书资料</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">信息表格</a>
                <dl class="layui-nav-child">
                    <dd><a target="contain" href="pages/manager/userlist.jsp">用户信息表格</a></dd>
                    <dd><hr></dd>
                    <dd><a target="contain" href="pages/manager/BoatBaselist.jsp">船只基本信息表格</a></dd>
                </dl>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <div class="layui-layout-search">
            <form class="layui-form layui-search-mid" action="pages/manager/searchresult.jsp" target="contain">
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="text" name="sousuo" placeholder="请输入搜索内容" class="layui-input">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    </div>
                </div>
            </form>

        </div>

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
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">所有商品</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">列表一</a></dd>
                        <dd><a href="javascript:;">列表二</a></dd>
                        <dd><a href="javascript:;">列表三</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">解决方案</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">列表一</a></dd>
                        <dd><a href="javascript:;">列表二</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">云市场</a></li>
                <li class="layui-nav-item"><a href="">发布商品</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <iframe  width="100%" height="100%" id="contain" name="contain" frameborder="no" border="0" marginwidth="0" marginheight="0">
            </iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
</body>
</html>
