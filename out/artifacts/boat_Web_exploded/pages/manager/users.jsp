<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 11372
  Date: 2020/11/5
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
    <%@include file="/pages/common/header.jsp"%>
    <script type="text/javascript">
        $(function () {
            $("a.deleteClass").click(function () {
                var text = $(this).parent().parent().find("td.username").text();
                return confirm("你确定要删除【"+$.trim(text)+"】吗？");
            });
           var updateRight= $(".updateRight");
            $(".updateRight").change(function () {
                var name = $(this).parent().parent().find("td.username").text();
               var userId=$(this).attr("userId");
               var select=$(this).find("option:selected").text();
               if (confirm("你确定要修改【"+$.trim(name)+"】的权限吗?")){
                    <%--location.href="${basePath}userServlet?action=updateUserRightById&id="+userId+"&right="+select+"&pageNo=${requestScope.page.pageNo}";--%>
                   $.getJSON("${basePath}userServlet","action=ajaxUpdateUserRightById&id="+userId+"&right="+select,function (data) {
                      alert("系统用户："+data.id+"的权限已修改为："+data.right);
                   });
               }else {
                   <%--location.href="${basePath}/userServlet?action=page&pageNo=${requestScope.page.pageNo}"--%>
                   return false;
               }
            });
        });
    </script>
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table">
                    <thead>
                    <tr>
                        <th>
                            用户ID
                        </th>
                        <th>
                            用户密码
                        </th>
                        <th>
                            权限
                        </th>
                        <th>
                            员工姓名
                        </th>
                        <th>
                            联系电话
                        </th>
                        <th colspan="2">
                            操作
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                   <c:forEach items="${requestScope.page.items}" var="user">
                       <tr>
                           <td>
                               ${user.id}
                           </td>
                           <td>
                               ${user.password}
                           </td>
                           <td>
                                <select userId="${user.id}" class="updateRight" name="right" id="right">
                                    <c:if test="${user.power eq '普通用户'}">
                                        <option id="money" value="收费权" selected="${user.power eq '收费权'?"selected":"none"}">收费权</option>
                                        <option id="watch" value="监督权" selected="${user.power eq '监督权'?"selected":"none"}">监督权</option>
                                        <option id="none" value="普通用户"   selected="${user.power eq '普通用户'?"selected":"none"}">普通用户</option>
                                    </c:if>
                                    <c:if test="${user.power eq '收费权'}">
                                        <option id="money" value="收费权" selected="selected">收费权</option>
                                        <option id="watch"  value="监督权">监督权</option>
                                        <option id="none" value="普通用户">普通用户</option>
                                    </c:if>
                                    <c:if test="${user.power eq '监督权'}">
                                        <option id="money" value="收费权">收费权</option>
                                        <option id="watch" value="监督权" selected="selected">监督权</option>
                                        <option id="none"  value="普通用户">普通用户</option>
                                    </c:if>
                                </select>
                           </td>
                           <td class="username">
                               ${user.username}
                           </td>
                           <td>
                               ${user.phone}
                           </td>
                           <td><a href="#">修改</a></td>
                           <td><a class="deleteClass" href="userServlet?action=delete&id=${user.id}&pageNo=${requestScope.page.pageNo}">删除</a></td>
                       </tr>
                   </c:forEach>
                    </tbody>
                </table>
                <div>
                    <a href="pages/manager/register.jsp" style="font-size: 15px"><i class="fa fa-plus-square-o" style="font-size:15px"></i>添加用户</a>
                </div>
                <%--静态包含分页条--%>
                <%@include file="/pages/common/page_nav.jsp"%>
            </div>
        </div>
    </div>
</body>
</html>
