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
    搜索ID：
    <div class="layui-inline">
        <input class="layui-input" name="id" id="demoReload" autocomplete="off">
    </div>
    <button class="layui-btn" data-type="reload">搜索</button>
</div>

<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table>

<script>
    layui.use('table', function(){
        var table = layui.table;

        //方法级渲染
        table.render({
            elem: '#LAY_table_user'
            ,url: 'pages/manager/date.json'
            ,cols: [[
                {checkbox: true, fixed: true}
                ,{field:'id', title: 'ID', width:80, sort: true, fixed: true}
                ,{field:'username', title: '用户名', width:80}
                ,{field:'sex', title: '性别', width:80, sort: true}
                ,{field:'city', title: '城市', width:80}
                ,{field:'sign', title: '签名'}
                ,{field:'experience', title: '积分', sort: true, width:80}
                ,{field:'score', title: '评分', sort: true, width:80}
                ,{field:'classify', title: '职业', width:80}
                ,{field:'wealth', title: '财富', sort: true, width:135}
            ]]
            ,id: 'testReload'
            ,page: true
            ,height: 310
        });

        var $ = layui.$, active = {
            reload: function(){
                var demoReload = $('#demoReload');

                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                            id: demoReload.val()
                    }
                }, 'data');
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
</script>

</body>
</html>
