<%--
  Created by IntelliJ IDEA.
  User: 三金
  Date: 2020/11/19
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/pages/common/header.jsp"%>
</head>
<body>
    <span class="layui-breadcrumb">
      <a href="pages/manager/searchresult.jsp"><cite><span style="font-size: 15px">搜索结果</span></cite></a>
    </span>
    <div class="layui-row layui-col-space10">
        <div class="layui-col-md4">
            1/3
        </div>
        <div class="layui-col-md4">
            1/3
        </div>
        <div class="layui-col-md4">
            1/3
        </div>
    </div>
    <script>
        //注意：导航 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function(){
            var element = layui.element;
        });
    </script>
</body>
</html>
