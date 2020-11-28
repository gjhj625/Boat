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
<body>
<div class="demoTable">
    搜索：
    <div class="layui-inline">
        <input class="layui-input" name="id" id="username" autocomplete="off">
    </div>
    <button class="layui-btn" data-type="reload" id="do_search" type="button">搜索</button>
    <button class="layui-btn" data-type="reload" id="reload" type="button">刷新</button>
</div>
<table class="layui-hide" id="userTable" lay-filter="userTable"></table>
<script>
    layui.use('table', function(){
        var table = layui.table;

        //第一个实例
        var usertable = table.render({
            elem: '#userTable'     //渲染的目标对象
            ,url:'userController?action=showUsers'     //数据接口
            ,title: '用户数据表'     //数据导出时的标题
            ,toolbar:"#userToolbar"    //表头工具条
            ,defaultToolbar:['filter', 'print', 'exports']
            ,totalRow:true//开启合并行
            ,method:'post'
            ,limit:4
            ,id: 'Search'
            ,page:{
                layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']//自定义分页布局
                ,limits:[4,5,6]
                ,first: false //不显示首页
                ,last: false //不显示尾页
            }
            ,cols: [[               //列表数据
                {type: 'checkbox', fixed: 'left',LAY_CHECKED:'true'}
                , {type: 'numbers'}
                ,{field:'id', title:'用户ID', width:80,sort:true,totalRowText:'合计'}
                ,{field:'username', title:'员工姓名', width:120}
                ,{field:'password', title:'密码', width:150}
                ,{field:'phone', title:'联系方式', width:120, sort: true}
                ,{field:'power', title:'权限', width:100}
                ,{field:'logins', title:'登入次数', width:100,totalRow:true}
                ,{field:'joinTime', title:'加入时间', width:120}
                ,{fixed: 'right', title:'操作', toolbar: '#userBar', width:150}
            ]]
        });
        // 执行搜索，表格重载
        $('#do_search').on('click', function () {
            // 搜索条件
            //var id = $('#id').val();
            var username = $('#username');
            //console.log(id);
            console.log(username.val());
            table.reload('Search', {
                url:'userController?action=reshowUsers'
                ,method: 'post'
                , where: {
                    //'id': id,
                    'username': username.val(),
                }
                , page: {
                    curr: 1
                }
            },'data');
        });
        // 刷新表格数据
        $('#reload').on('click', function () {
            // 搜索条件
            table.reload('Search', {
                url:'userController?action=showUsers'
                ,method: 'post'
                , page: {
                    curr: 1
                }
            },'data');
        });

    });
</script>
</body>
</html>
