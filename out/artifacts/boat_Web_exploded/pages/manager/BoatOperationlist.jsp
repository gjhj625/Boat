<%--
  Created by IntelliJ IDEA.
  User: 11372
  Date: 2020/11/21
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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

    <div class="save" id="saveOrUpdateDiv">
        <form class="layui-form" action="" lay-filter = "dataFrm" id="dataFrm">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">船名：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="boatName" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">证书编号：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="cerNo"  autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">载客定额：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="passNum" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">载货定额：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="cargo" lay-verify="required"  autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">经济性质：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="economic" lay-verify="required"  autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">船舶经营人：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="shipOperator" lay-verify="required"  autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">批准机关：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="org" lay-verify="required"  autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">批准文号：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="approvalNo" lay-verify="required"  autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">客运航线：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="passRoutes" lay-verify="required"  autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">货运航线：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="cargoRoutes" lay-verify="required"  autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">发证日期：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="getCerDate" lay-verify="required"  autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">有效日期至：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="effectiveDate" lay-verify="required"  autocomplete="off" class="layui-input">
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
            //打开添加页面
            function openAddUser(){
                mainIndex = layer.open({
                    type:1,
                    title:'添加用户',
                    content:$("#saveOrUpdateDiv"),
                    end:function(){
                        $("#saveOrUpdateDiv").css("display",'none');
                    },
                    area:['600px','500px'],
                    success:function (index) {
                        //清空表单数据
                        // $("#dataForm")[0].reset();
                        $("#dataFrm")[0].reset();
                        //url="user/addUser.action";
                    }
                });
            };

            table.on('edit(userTable)', function(obj){ //注：edit是固定事件名，test是table原始容器的属性 lay-filter="对应的值"
                console.log(obj.value); //得到修改后的值
                console.log(obj.field); //当前编辑的字段名
                console.log(obj.data); //所在行的所有相关数据
                //发送post请求更新数据
                /*  $.post("url?"+obj.field+"&id="+obj.data.id,function(json){

                 }); */
            });
            //批量删除
            function batchDeleteFunction(){
                var checkStatus = table.checkStatus('Search'),
                    data = checkStatus.data,
                    newsId = [];
                if (data.length>0){
                    for (var i in data){
                        newsId.push(data[i].boatName);
                    }
                    //alert(newsId);
                    $.getJSON("${pageScope.basePath}boatOpeCerServlet","action=deleteBoatOpeList&names="+newsId.toString(),function (res) {
                        if (res.code==200){
                            layer.msg("批量删除成功");
                            table.reload('Search',{page:{curr:$(".layui-laypage-em").next().html()}});
                        }else {
                            layer.msg("批量删除失败");
                        }
                        //刷新数据表格
                    });
                }else {
                    layer.msg("请选择需要删除的用户");
                }
            }
            table.on('checkbox(userTable)', function(obj){
                console.log(obj.checked); //当前是否选中状态
                console.log(obj.data); //选中行的相关数据
                console.log(obj.type); //如果触发的是全选，则为：all，如果触发的是单选，则为：one
            });

            var url;
            var mainIndex;
            //修改
            function openUpdateUser(data){
                mainIndex = layer.open({
                    type:1,
                    title:'修改船舶基本信息',
                    content:$("#saveOrUpdateDiv"),
                    end:function(){
                        $("#saveOrUpdateDiv").css("display",'none');
                    },
                    area:['600px','500px'],
                    success:function (index) {
                        form.val("dataFrm",data);
                        //url="user/updateUser.action";
                    }
                });
            };
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
            //保存
            form.on("submit(doSubmit)",function (obj) {
                //序列化表单数据
                var params = $("#dataFrm").serialize();
                $.getJSON("${pageScope.basePath}boatOpeCerServlet","action=ajaxUpdateBoatOpe&"+params,function (res) {
                    <%--alert(${basePath});--%>
                    if (res.code==200){
                        layer.msg("修改成功");
                    }else {
                        layer.msg("修改失败");
                    }
                    //关闭弹出层
                    layer.close(mainIndex);
                    //刷新数据表格
                    table.reload('Search',{page:{curr:$(".layui-laypage-em").next().html()}});
                });
            });
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
                    , {type: 'numbers'}
                    ,{field:'boatName', title:'船名', width:80,sort:true}
                    ,{field:'cerNo', title:'证书编号', width:120,sort:true}
                    ,{field:'passNum', title:'载客定额', width:150,sort:true}
                    ,{field:'cargo', title:'载货定额', width:120, sort: true}
                    ,{field:'economic', title:'经济性质', width:100}
                    ,{field:'shipOperator', title:'船舶经营人', width:100}
                    ,{field:'org', title:'批准机关', width:120}
                    ,{field:'approvalNo', title:'批准文号', width:100}
                    ,{field:'passRoutes', title:'客运航线', width:120}
                    ,{field:'cargoRoutes', title:'货运航线', width:120}
                    ,{field:'getCerDate', title:'发证日期',sort:true,width:100,templet: '<div>{{layui.util.toDateString(d.getCerDate, "yyyy-MM-dd") }}</div>'}
                    ,{field:'effectiveDate', title:'有效日期至',sort:true, width:120,templet: '<div>{{layui.util.toDateString(d.effectiveDate, "yyyy-MM-dd") }}</div>'}
                    ,{fixed: 'right', title:'操作', toolbar: '#userBar', width:150}
                ]],
            })
        });
    </script>
</body>
</html>
