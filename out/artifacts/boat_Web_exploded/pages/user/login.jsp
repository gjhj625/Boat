<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <%@include file="/pages/common/header.jsp"%>
    <link type="text/css" rel="stylesheet" href="static/css/login.css">
    <script type="text/javascript">
        $(function () {
            //验证码绑定单击事件
            $("#code_img").click(function () {
                this.src="${basePath}/kaptcha.jpg?d="+new Date();
            });
        });
    </script>
</head>
<body>
    <div id="login-box">
        <div class="tit">
            <h1>Login</h1>
            <span class="errorMsg">
                ${pageContext.request.getAttribute("msg")}
            </span>
        </div><br><br>
        <form action="userServlet" method="post">
            <input type="hidden" value="login" name="action">
            <div class="form">
                <div class="item">
                    <i class="fa fa-github-alt" style="font-size:24px"></i>
                    <input type="text" name="id" placeholder="ID" class="id">
                </div>
                <div class="item">
                    <i class="fa fa-search" style="font-size:24px"></i>
                    <input type="password" name="password" class="password" placeholder="password">
                </div>
                <div class="item">
                        <label for="code" style="font-size:13px;color: red;text-align: center">验证码</label>
                        <input style="width: 105px" type="text" name="code" id="code" placeholder="验证码"/>
                        <img id="code_img" src="kaptcha.jpg" alt="" style="width: 100px; height: 31px;float: left;margin-left: 10px;float: right"> <br>
                </div>
            </div>
            <button type="submit">Login</button>
        </form>
    </div>

</body>
</html>
