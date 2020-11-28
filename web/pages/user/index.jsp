<%@ page import="com.boat.service.UserService" %>
<%@ page import="com.boat.service.impl.UserServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: 11372
  Date: 2020/11/4
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>船舶管理系统</title>
    <%@include file="/pages/common/header.jsp"%>
    <script type="text/javascript">
        //弹出隐藏层
        function ShowDiv(show_div,bg_div){
            document.getElementById(show_div).style.display='block';
            document.getElementById(bg_div).style.display='block' ;
            var bgdiv = document.getElementById(bg_div);
            bgdiv.style.width = document.body.scrollWidth;
            bgdiv.style.height = $(document).height();
            $("#"+bg_div).height($(document).height());
        };
        //关闭弹出层
        function CloseDiv(show_div,bg_div)
        {
            document.getElementById(show_div).style.display='none';
            document.getElementById(bg_div).style.display='none';
        };
        $(function () {
            $("#sub_btn").click(function () {
                var repwdText = $("#renewPassword").val();
                var passwordTest = $("#newPassword").val();//获取value值
                if (repwdText!=passwordTest){
                    $(".errorMsg").text("两密码不一致");
                    return false;
                }
                $(".errorMsg").text("");
            });
        });
    </script>
</head>
<body>
    <%@include file="/pages/common/head.jsp"%>
    <div class="panel layout-panel layout-west" style="left: 0px;top: 95px;width: 130px;display: block">
        <div class="panel-header" style="width: 118px">
            <div class="panel-title">船舶管理系统</div>
            <div class="panel-tool">
                <a href="javascript:void(0)" class="layout-button-left"></a>
                <i class="fa fa-angle-double-left" style="font-size:15px"></i>
            </div>
        </div>
    </div>
</body>
</html>
