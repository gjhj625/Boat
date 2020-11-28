<%--
  Created by IntelliJ IDEA.
  User: 11372
  Date: 2020/11/5
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/pages/common/header.jsp"%>
    <script type="text/javascript">
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
    <div class="form">
        <div>
            <span class="errorMsg">
                ${pageContext.request.getAttribute("msg")}
            </span>
        </div>
        <form action="http://localhost:8080/boat/userServlet?action=updatePassword">
            <div class="form-group">
                <label>旧密码：</label>
                <input type="text" name="rePassword" id="rePassword">
            </div>
            <div class="form-group">
                <label>新密码：</label>
                <input type="text" name="newPassword" id="newPassword">
            </div>
            <div class="form-group">
                <label>确认密码:</label>
                <input type="text" name="renewPassword" id="renewPassword">
            </div>
            <div class="form-group">
                <button id="sub_btn" type="submit" class="btn btn-success">提交</button>
            </div>
        </form>
    </div>
</body>
</html>
