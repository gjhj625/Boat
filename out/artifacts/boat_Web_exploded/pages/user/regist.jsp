<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>船舶用户注册页面</title>
    <base href="http://localhost:8080/boat/">
</head>
    <link type="text/css" rel="stylesheet" href="static/css/style.css">
    <script type="text/javascript" src="static/script/jquery-1.7.2.js"></script>
    <script type="text/javascript">
    </script>
<body>
        <!--头图标-->
        <div id="login_header">
            <img class="logo_img" src="static/img/logo.jpg">
        </div>
        <!--登陆信息-->
        <div class="login_body">
            <div id="login_content">
                <span class="login_word">欢迎注册</span>
            </div>

            <div id="content">
                <div class="login_form">
                    <div class="login_box">
                        <div class="login_title">
                            <h1>注册船舶用户</h1>
                            <span class="errorMsg"></span> <!--用来提示用户注册时的错误信息-->
                        </div>
                        <br>
                        <div class="form"><!--用来提交用户信息和保存信息的-->
                            <form action="registServlet" method="post" autocomplete="off"> <!--关闭自动填充-->
                                <label>用户ID：</label>&nbsp;&nbsp;&nbsp;
                                <input type="text" id="id" name="id" placeholder="请输入用户ID" tabindex="1" class="msg">
                                <br>
                                <br>
                                <label>用户姓名：</label>
                                <input type="text" id="username" name="username" placeholder="请输入用户姓名" tabindex="1" class="msg">
                                <br>
                                <br>
                                <label>用户密码：</label>
                                <input type="password" id="password" name="password" placeholder="请输入用户密码" tabindex="1" class="msg">
                                <br>
                                <br>
                                <label>确认密码：</label>
                                <input type="password" id="repassword" name="repassword" placeholder="确认密码" tabindex="1" class="msg">
                                <br>
                                <br>
                                <label>联系电话：</label>
                                <input type="text" id="phone" name="phone" placeholder="请输入您的联系电话" tabindex="1" class="msg">
                                <br>
                                <br>
                                <label>验证码：</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="text" id="code" placeholder="请输人验证码" name="code" class="msg" style="width: 150px;">
                                <img alt="" src="static/img/code.bmp" style="float: right; margin-right: 40px">
                                <br>
                                <br>
                                <input type="submit" value="注册" id="sub_btn">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>