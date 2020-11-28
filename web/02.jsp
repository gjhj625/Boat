<%--
  Created by IntelliJ IDEA.
  User: hongsir12
  Date: 2020/11/14
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据表格</title>
    <%@include file="/pages/common/header.jsp"%>

</head>

<body>

<table class="layui-hide" id="userTable" lay-filter="userTable"></table>
<div style="display: none;" id="userToolbar">
    <div class="layui-btn-group">
        <button type="button" class="layui-btn layui-btn-sm" lay-event="add">增加</button>
        <button type="button" class="layui-btn layui-btn-sm" lay-event="search">查询</button>
        <button type="button" class="layui-btn layui-btn-sm" lay-event="batchDelete">批量删除</button>
    </div>
</div>

<div id="userBar" style="display: none">
    <a type="button" class="layui-btn layui-btn-sm" lay-event="edit">编辑</a>
    <a type="button" class="layui-btn layui-btn-danger layui-btn-sm" lay-event="del">删除</a>
</div>

<div style="display: none;padding: 20px;" id="saveOrUpdateDiv">
    <form class="layui-form" action="" lay-filter = "dataFrm" id="dataFrm">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">编号：</label>
                <div class="layui-input-inline">
                    <input type="text" name="id" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">员工姓名：</label>
                <div class="layui-input-inline">
                    <input type="text" name="username"  autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">密码：</label>
                <div class="layui-input-inline">
                    <input type="password" name="password" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">联系电话：</label>
                <div class="layui-input-inline">
                    <input type="text" name="phone" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">权限：</label>
                <div class="layui-input-inline">
                    <input type="text" name="power" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item" style="text-align: center">
            <div class="layui-input-block">
                <button type="button" class="layui-btn layui-btn-normal layui-btn-sm layui-icon layui-icon-ok" lay-filter="doSubmit" id="doSubmit" lay-submit="">&nbsp提交</button>
                <button type="reset" class="layui-btn layui-btn-warm layui-btn-sm layui-icon layui-icon-refresh-3">&nbsp重置</button>
            </div>
        </div>
    </form>
</div>

<div style="display: none;padding: 20px;" id="searchUserDiv">
    <form class="layui-form" action="" lay-filter = "dataFrm" id="dataForm">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">编号：</label>
                <div class="layui-input-inline">
                    <input type="text" name="id" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">用户名：</label>
                <div class="layui-input-inline">
                    <input type="text" name="username"  autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">城市：</label>
                <div class="layui-input-inline">
                    <input type="text" name="city" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item" style="text-align: center">
            <div class="layui-input-block">
                <button type="button" class="layui-btn layui-btn-normal layui-btn-sm layui-icon layui-icon-search" id="doSearch">&nbsp查询</button>
                <button type="reset" class="layui-btn layui-btn-warm layui-btn-sm layui-icon layui-icon-refresh-3">&nbsp重置</button>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    layui.use(['jquery','layer','form','table','laydate'],function () {
        var $ = layui.jquery;
        var layer = layui.layer;
        var form = layui.form;
        var table = layui.table;
        var laydate =layui.laydate;

        //绑定时间选择器
        laydate.render({
            elem:'#startTime'
        });
        laydate.render({
            elem:'#endTime'
        });

        var tableIns =table.render({
            elem: '#userTable'     //渲染的目标对象
            ,url:'userController?action=showUsers'     //数据接口
            ,title: '用户数据表'     //数据导出时的标题
            ,toolbar:"#userToolBar"    //表头工具条
            ,defaultToolbar:['filter', 'print', 'exports']
            ,totalRow:true//开启合并行
            ,limit:4
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
        })

        //监听头部工具栏事件
        table.on("toolbar(userTable)",function (obj) {
            switch(obj.event){
                case 'add':
                    openAddUser();
                    break;
                case 'search':
                    openSearchUser();
                    break;
                case 'batchDelete':
                    layer.msg('批量删除');
                    break;

            };
        })

        var url;
        var mainIndex;
        //打开添加页面
        function openAddUser(){
            mainIndex = layer.open({
                type:1,
                title:'添加用户',
                content:$("#saveOrUpdateDiv"),
                area:['600px','500px'],
                success:function (index) {
                    //清空表单数据
                    $("#dataForm")[0].reset();
                    url="user/addUser.action";
                }
            });
            layer.close(mainIndex);
            //刷新数据表格
            table.reload();
        };
        //查询
        function openSearchUser() {
            mainIndex = layer.open({
                type:1,
                title:'查询用户',
                content:$("#searchUserDiv"),
                area:['600px'],
                success:function (index) {
                    $("#dataForm")[0].reset();
                }
            })
        };

        //修改
        function openUpdateUser(data){
            mainIndex = layer.open({
                type:1,
                title:'修改用户',
                content:$("#saveOrUpdateDiv"),
                area:['600px','500px'],
                success:function (index) {
                    form.val("dataFrm",data);
                    url="user/updateUser.action";
                }
            })
        };


        //保存
        form.on("submit(doSubmit)",function (obj) {
            //序列化表单数据
            var params = $("#dataFrm").serialize();
            $.getJSON("${pageScope.basePath}userServlet","action=ajaxUpdateUser&"+params,function (data) {
                <%--alert(${basePath});--%>
                layer.msg("成功");
                //关闭弹出层
                layer.close(mainIndex);
                //刷新数据表格
                table.reload();
            });
            layer.close(mainIndex);
            //刷新数据表格
            table.reload();
        });



        //监听头部工具栏事件
        table.on('checkbox(userTable)', function(obj){
            console.log(obj.checked); //当前是否选中状态
            console.log(obj.data); //选中行的相关数据
            console.log(obj.type); //如果触发的是全选，则为：all，如果触发的是单选，则为：one
        });



        //监听行单击事件
        /*table.on('row(userTable)', function(obj){
            console.log(obj.tr) //得到当前行元素对象
            console.log(obj.data) //得到当前行数据
            obj.del(); //删除当前行
        });*/

        //监听行工具事件
        //监听工具条
        table.on('tool(userTable)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）


            if(layEvent === 'del'){ //删除
                layer.msg("删除");
                layer.confirm('真的删除行么', function(index){
                    layer.close(index);
                    //向服务端发送删除指令
                });
            } else if(layEvent === 'edit'){ //编辑
                openUpdateUser(data);

            }
        });
    });
</script>
</body>
</html>
