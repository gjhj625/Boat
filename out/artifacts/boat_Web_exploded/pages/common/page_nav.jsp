<%--
  Created by IntelliJ IDEA.
  User: 11372
  Date: 2020/10/28
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container" align="center">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="pagination">
                <c:if test="${requestScope.page.pageNo==1}">
                    <li class="disabled">
                        <a href="${requestScope.page.url}&pageNo=1">首页</a>
                    </li>
                    <li class="disabled">
                        <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo-1}">上一页</a>
                    </li>
                </c:if>
                <c:if test="${requestScope.page.pageNo>1}">
                    <li>
                        <a href="${requestScope.page.url}&pageNo=1">首页</a>
                    </li>
                    <li>
                        <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo-1}">上一页</a>
                    </li>
                </c:if>
                <c:choose>
                    <c:when test="${requestScope.page.pageTotal<=5}">
                        <c:forEach begin="1" end="${requestScope.page.pageTotal}" var="i">
                            <c:if test="${i==requestScope.page.pageNo}">
                                <li>
                                    <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
                                </li>
                            </c:if>
                            <c:if test="${i!=requestScope.page.pageNo}">
                                <li>
                                    <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
                                </li>
                            </c:if>
                        </c:forEach>
                    </c:when>
                    <%--情况二：总页码大于5的情况--%>
                    <c:when test="${requestScope.page.pageTotal>5}">
                        <c:choose>
                            <%--前面三个--%>
                            <c:when test="${requestScope.page.pageNo<=3}">
                                <c:forEach begin="1" end="${requestScope.page.pageTotal}" var="i">
                                    <c:if test="${i==requestScope.page.pageNo}">
                                        <li>
                                            <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${i!=requestScope.page.pageNo}">
                                        <li>
                                            <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </c:when>
                            <%--后面三个--%>
                            <c:when test="${requestScope.page.pageNo>requestScope.page.pageTotal-3}">
                                <c:forEach begin="${requestScope.page.pageTotal-4}" end="${requestScope.page.pageTotal}" var="i">
                                    <c:if test="${i==requestScope.page.pageNo}">
                                        <li>
                                            <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${i!=requestScope.page.pageNo}">
                                        <li>
                                            <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </c:when>
                            <%--中间的数--%>
                            <c:otherwise>
                                <c:forEach begin="${requestScope.page.pageNo-2}" end="${requestScope.page.pageNo+2}" var="i">
                                    <c:if test="${i==requestScope.page.pageNo}">
                                        <li>
                                            <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${i!=requestScope.page.pageNo}">
                                        <li>
                                            <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </c:when>
                </c:choose>
                <c:if test="${requestScope.page.pageNo==requestScope.page.pageTotal}">
                    <li class="disabled">
                        <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}">下一页</a>
                    </li>
                    <li class="disabled">
                        <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageTotal}">末页</a>
                    </li>
                </c:if>
                <c:if test="${requestScope.page.pageNo<requestScope.page.pageTotal}">
                    <li>
                        <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}">下一页</a>
                    </li>
                    <li>
                        <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageTotal}">末页</a>
                    </li>
                </c:if>
                <span id="page" style="margin-left: 5px">共${requestScope.page.pageTotal}页，${requestScope.page.pageTotalCount}条记录
                    <i class="fa fa-step-forward" style="font-size:15px"></i>到第
                    <input style="width: 30px;height: 23px" value="${param.pageNo}" name="pn" id="pn_input"/>页
                    <button style="height: 27px;text-align: center" id="searchPageBtn" type="button" class="btn btn-default">确定</button>
                <script type="text/javascript">
                    $(function () {
                        $("#searchPageBtn").click(function () {
                            var pageNo=$("#pn_input").val();
                            location.href="${pageScope.basePath}${requestScope.page.url}&pageNo="+pageNo;
                        });
                    });
                </script>
            </ul>
        </div>
    </div>
</div>
