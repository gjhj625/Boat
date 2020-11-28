<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>数据表格</title>
    <%@include file="/pages/common/header.jsp"%>
<%--    <link href="layui/css/layui.css" rel="stylesheet">--%>
<%--    <script src="layui/layui.js"></script>--%>
</head>
<body>
    <form action="boatInfoServlet" method="post">
        <input type="hidden" name="action" value="addBoat">
        <input id="test" name="test" type="text">
        <input type="submit">
    </form>
</body>
</html>