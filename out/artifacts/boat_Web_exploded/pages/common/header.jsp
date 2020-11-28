<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<%@ page import="java.sql.Timestamp,java.text.*"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
    pageContext.setAttribute("basePath",basePath);
%>
<base href=<%=basePath%>>
<%--<!-- Bootstrap -->--%>
<%--<script type="text/javascript" src="static/script/jquery-1.7.2.js"></script>--%>
<script type="text/javascript" src="static/script/jquery-1.8.3/jquery.min.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="bootstrap/js/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
<link href="layui/css/layui.css" rel="stylesheet">
<script type="text/javascript" src="layui/layui.js"></script>
<link type="text/css" rel="stylesheet" href="static/css/style.css">