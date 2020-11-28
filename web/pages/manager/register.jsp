<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>船舶用户注册页面</title>
    <%@include file="/pages/common/header.jsp"%>
    <script type="text/javascript">
        $(function () {
            //验证码绑定单击事件
            $("#code_img").click(function () {
                this.src="${basePath}/kaptcha.jpg?d="+new Date();
            });
            $("#sub_btn").click(function () {
                // 验证用户名：必须由字母，数字下划线组成，并且长度为 5 到 12 位
                //获取用户名的值
                var idTest = $("#id").val();//获取value值
                //创建正则表达式
                var idPatt = /^\w{5,12}$/; //^$是从头到尾去匹配
                //用test方法验证
                if (!idPatt.test(idTest)){
                    //提示用户结果
                    $(".errorMsg").text("ID不合法");
                    return false;
                }

                var usernameTest = $("#username").val();//获取value值
                //创建正则表达式
                var usernamePatt = /^\w{5,12}$/; //^$是从头到尾去匹配
                //用test方法验证
                if (!usernamePatt.test(usernameTest)){
                    //提示用户结果
                    $(".errorMsg").text("用户名不合法");
                    return false;
                }
                $(".errorMsg").text("");
                // 验证密码必须由字母，数字下划线组成，并且长度为 5 到 12 位
                //获取用户名的值
                var passwordTest = $("#password").val();//获取value值
                //创建正则表达式
                var passwordPatt = /^\w{5,12}$/; //^$是从头到尾去匹配
                //用test方法验证
                if (!passwordPatt.test(passwordTest)){
                    //提示用户结果
                    $(".errorMsg").text("密码不合法");
                    return false;
                }
                $(".errorMsg").text("");
                // 验证确认密码：和密码相同
                var repwdText = $("#repassword").val();
                if (repwdText!=passwordTest){
                    $(".errorMsg").text("两密码不一致");
                    return false;
                }
                $(".errorMsg").text("");
                // 联系电话 11位
                var phoneText = $("#phone").val();
                var phonePatt =  /^[1][3,4,5,7,8][0-9]{9}$/;
                if(!phonePatt.test(phoneText)){
                    $(".errorMsg").text("联系电话不合法");
                    return false;
                }
                $(".errorMsg").text("");
                // 验证码：现在只需要验证用户已输入。因为还没讲到服务器。验证码生成
                var code = $("#code").val();
                //去掉空格
                code = $.trim(code);
                if (code == null||code==""){
                    $(".errorMsg").text("验证码不能为空");
                    return false;
                }
                $(".errorMsg").text("");
            });
        });
    </script>
</head>
<body>
<!--头图标-->
<%--<div id="login_header">
    <img class="logo_img" src="static/img/logo.jpg">
</div>--%>
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
                    <span class="errorMsg">${requestScope.msg}</span> <!--用来提示用户注册时的错误信息-->
                </div>
                <br>
                <div class="form"><!--用来提交用户信息和保存信息的-->
                    <form action="userServlet" method="post" autocomplete="off"> <!--关闭自动填充-->
                        <input type="hidden" name="action" value="regist">
                        <label>用户ID：</label>&nbsp;&nbsp;&nbsp;
                        <input value="${requestScope.id}" type="text" id="id" name="id" placeholder="请输入用户ID" tabindex="1" class="msg">
                        <br>
                        <br>
                        <label>用户姓名：</label>
                        <input value="${requestScope.username}" type="text" id="username" name="username" placeholder="请输入用户姓名" tabindex="1" class="msg">
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
                        <input  value="${requestScope.phone}" type="text" id="phone" name="phone" placeholder="请输入您的联系电话" tabindex="1" class="msg">
                        <br>
                        <br>
                        <label for="code" style="font-size:13px;color: red;text-align: center">验证码</label>
                        <input style="width: 105px" type="text" name="code" id="code" placeholder="验证码"/>
                        <img id="code_img" src="kaptcha.jpg" alt="" style="width: 100px; height: 31px;float: left;margin-left: 10px;float: right"> <br>
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