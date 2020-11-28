<%@ page import="com.boat.service.UserService" %>
<%@ page import="com.boat.service.impl.UserServiceImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <%@include file="/pages/common/header.jsp"%>
    <script type="text/javascript">
        $(function () {
           $(".modifyName").click(function () {
               var name=prompt("请输入您想要修改的名字","");
               if (name!=null && name!="")
               {
                   var id =$(this).parent().parent().find("div.userId").text();
                    location.href="http://localhost:8080/boat/userServlet?action=updateName&name="+name+"&id="+id;
               }
           });
            $(".modifyPhone").click(function () {
                var phone=prompt("请输入您想要修改的联系电话","");
                if (phone!=null && phone!="")
                {
                    var id =$(this).parent().parent().find("div.userId").text();
                    location.href="http://localhost:8080/boat/userServlet?action=updatePhone&phone="+phone+"&id="+id;
                }
            });
        });
    </script>
</head>
<body>
<%@include file="/pages/common/head.jsp"%>
<div class="container-fluid">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="row clearfix">


                    <div class="col-md-2 column">
                        <div class="btn-group btn-group-vertical modyfyUserLeft">
                            <button class="btn btn-default" href=""><em class="glyphicon glyphicon-align-left"></em> 个人信息</button>
                            <button class="btn btn-default" href=""><em class="glyphicon glyphicon-align-center"></em> 修改密码</button>
                        </div>
                    </div>
                    <div class="col-md-10 column">
                        <%@include file="modyfyUserRightInfo.jsp"%>
                    </div>



                </div>
            </div>
        </div>
</div>
</body>
</html>