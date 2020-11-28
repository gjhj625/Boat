<%--
  Created by IntelliJ IDEA.
  User: 三金
  Date: 2020/11/19
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.text.*"%>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>Layui</title>
    <%@include file="/pages/common/header.jsp"%>
</head>
<body>
<table class="layui-hide" id="userTable" lay-filter="userTable"></table>
<div style="display: none;" id="userToolbar">
    <div class="layui-btn-group">
        <button type="button" class="layui-btn layui-btn-sm" lay-event="add">添加</button>
        <button type="button" class="layui-btn layui-btn-danger layui-btn-sm" lay-event="batchDelete">批量删除</button>
        <div class="layui-inline" style="margin-left: 5px">
            <input class="layui-input" name="boatName" placeholder="请输入要搜索的船名" id="boatname" autocomplete="off">
        </div>
    </div>
    <button class="layui-btn layui-btn-sm" data-type="reload" id="do_search" lay-event="search" type="button">搜索</button>
    <button class="layui-btn layui-btn-sm" data-type="reload" id="reload" lay-event="reload" type="button">重置</button>
</div>

<div id="userBar" style="display: none">
    <a type="button" class="layui-btn layui-btn-sm" lay-event="edit">编辑</a>
    <a type="button" class="layui-btn layui-btn-danger layui-btn-sm" lay-event="del">删除</a>
</div>
<script type="text/javascript">
    layui.use(['table','layer','form'], function(){
        var table = layui.table;
        var form=layui.form;
        var layer=layui.layer;
        table.on('toolbar(userTable)',function(obj){
            switch(obj.event){
                case 'add':
                    openAddUser();
                    break;
                case 'search':
                    searchBoat();
                    break;
                case 'batchDelete':
                    batchDeleteFunction();
                    break;
                case 'reload':
                    reloadFunction();
                    break;
            };
        });

        table.on('tool(userTable)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            if(layEvent === 'del'){ //删除
                layer.msg("删除");
                // alert(data.boatName);//读取某个数据
                layer.confirm('真的删除行么', function(index){
                    obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                    layer.close(index);
                    //向服务端发送删除指令
                    $.getJSON("${pageScope.basePath}boatOpeCerServlet","action=deleteBoatOpeByBoatName&boatName="+data.boatName,function (res) {
                        <%--alert(${basePath});--%>
                        if (res.code==200){
                            layer.msg("删除成功");
                        }else {
                            layer.msg("删除失败");
                        }
                        //刷新数据表格
                        table.reload('Search',{page:{curr:$(".layui-laypage-em").next().html()}});
                    });
                });
            } else if(layEvent === 'edit'){ //编辑
                //layer.msg("编辑");
                openUpdateUser(data);
            }
        });
        //打开搜索根据船名搜索
        function searchBoat(data){
            var boatName = $("#boatname");
            console.log(boatName.val());
            table.reload('Search', {
                url:'boatOpeCerServlet?action=reshowBoatOpe'
                ,method: 'post'
                , where: {
                    //'id': id,
                    'boatName': boatName.val(),
                }
                , page: {
                    curr: 1
                }
            },'data');
        }

        function reloadFunction(data){
            // 刷新表格数据
            // 搜索条件
            table.reload('Search', {
                url:'boatOpeCerServlet?action=showBoatOpe'
                ,method: 'post'
                , page: {
                    curr: 1
                }
            },'data');
        };
        //渲染数据表格
        var tableIns=table.render({
            elem: '#userTable'     //渲染的目标对象
            ,url:'boatOpeCerServlet?action=showBoatOpe'     //数据接口
            ,title: '船舶运营信息表'     //数据导出时的标题
            ,toolbar:"#userToolbar"    //表头工具条
            ,defaultToolbar:['filter', 'print', 'exports']
            ,totalRow:true//开启合并行
            ,method:'post'
            ,id: 'Search'
            ,limit:6
            ,page:{
                layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']//自定义分页布局
                ,limits:[4,5,6]
                ,first: false //不显示首页
                ,last: false //不显示尾页
            }
            ,cols: [[               //列表数据
                {type: 'checkbox',checkbox:true,fixed: 'left',LAY_CHECKED:true,filter:'test'}
                , {type: 'numbers', title:'序号'}
                ,{field:'boatName', title:'船名', width:80,sort:true}
                ,{field:'cerNo', title:'证书编号', width:100,sort:true}
                ,{field:'passNum', title:'载客定额', width:100,sort:true}
                ,{field:'cargo', title:'载货定额', width:100, sort: true}
                ,{field:'economic', title:'经济性质', width:100}
                ,{field:'shipOperator', title:'船舶经营人', width:100}
                ,{field:'org', title:'批准机关', width:120}
                ,{field:'approvalNo', title:'批准文号', width:100}
                ,{field:'passRoutes', title:'客运航线', width:120}
                ,{field:'cargoRoutes', title:'货运航线', width:120}
                ,{field:'getCerDate', title:'发证日期',sort:true,width:100,templet: '<div>{{layui.util.toDateString(d.getCerDate, "yyyy-MM-dd") }}</div>'}
                ,{field:'effectiveDate', title:'有效日期至',sort:true, width:120,templet: '<div>{{layui.util.toDateString(d.effectiveDate, "yyyy-MM-dd") }}</div>'}
                ,{fixed: 'right', title:'操作', toolbar: '#userBar'}
            ]]
            ,done: function(res, curr, count){
                for(var i=0; i < res.data.length; i++) {
                    var effectiveDate = new Date(res.data[i].effectiveDate);
                    var now = new Date();
                    var days = (now - effectiveDate)/86400000;
                    if(days > 0){
                        $("tr[data-index='" + i + "']").attr({"style":"color:red"});
                    }
                    else if(days <= 0 && days >= -7){
                        $("tr[data-index='" + i + "']").attr({"style":"color:#FFCC00"});
                    }
                    else{
                        $("tr[data-index='" + i + "']").attr({"style":"color:#009900"});
                    }
                    //console.log(effectiveDate);
                    //console.log(days);
                }
            }
        });
        //页面层-自定义

        layer.open({
            type: 2,
            title: false,
            closeBtn: 0,
            area: ['789px', '450px'],
            shadeClose: true,
            skin: 'yourclass',
            content: 'pages/manager/test4.jsp'
        });
    });
</script>
</body>
</html>
