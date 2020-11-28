<%--
  Created by IntelliJ IDEA.
  User: 三金
  Date: 2020/11/19
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Layui</title>
    <%@include file="/pages/common/header.jsp"%>
</head>
<body style="width:789px">
<table class="layui-hide" id="userTable" lay-filter="userTable"></table>

<script type="text/javascript">
    layui.use(['table','layer','form'], function(){
        var table = layui.table;
        //渲染数据表格
        var tableIns=table.render({
            elem: '#userTable'     //渲染的目标对象
            ,url:'boatOpeCerServlet?action=tipsShowBoatOpe'     //数据接口
            ,title: '船舶运营信息表'     //数据导出时的标题
            ,defaultToolbar:['filter', 'print', 'exports']
            ,method:'post'
            ,toolbar: true
            ,limit:6
            ,page:{
                layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']//自定义分页布局
                ,limits:[4,5,6]
                ,first: false //不显示首页
                ,last: false //不显示尾页
            }
            ,cols: [[               //列表数据
                {type: 'numbers', title:'序号'}
                ,{field:'boatName', title:'船名', width:80,sort:true}
                ,{field:'cerNo', title:'证书编号', width:120,sort:true}
                ,{field:'shipOperator', title:'船舶经营人', width:100}
                ,{field:'org', title:'批准机关', width:120}
                ,{field:'approvalNo', title:'批准文号', width:100}
                ,{field:'getCerDate', title:'发证日期',sort:true,width:100,templet: '<div>{{layui.util.toDateString(d.getCerDate, "yyyy-MM-dd") }}</div>'}
                ,{field:'effectiveDate', title:'有效日期至',sort:true, width:120,templet: '<div>{{layui.util.toDateString(d.effectiveDate, "yyyy-MM-dd") }}</div>'}
            ]]
            ,done: function(res, curr, count) {
                for (var i = 0; i < res.data.length; i++) {
                    var effectiveDate = new Date(res.data[i].effectiveDate);
                    var now = new Date();
                    var days = (now - effectiveDate) / 86400000;
                    if (days > 0) {
                        $("tr[data-index='" + i + "']").attr({"style": "color:red"});
                    } else if (days <= 0 && days >= -7) {
                        $("tr[data-index='" + i + "']").attr({"style": "color:#FFCC00"});
                    } else {
                        $("tr[data-index='" + i + "']").attr({"style": "color:#009900"});
                    }
                    //console.log(effectiveDate);
                    //console.log(days);
                }
            }
        });
    });
</script>
</body>
</html>
