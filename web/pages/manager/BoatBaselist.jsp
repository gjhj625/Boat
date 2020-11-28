<%--
  Created by IntelliJ IDEA.
  User: 11372
  Date: 2020/11/15
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%@include file="/pages/common/header.jsp"%>
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
                <label class="layui-form-label">登记号码：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatRegNum"  autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">曾用名：</label>
                <div class="layui-input-inline">
                    <input type="text" name="oldBoatName" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">船籍港：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatRePort" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">原船籍港：</label>
                <div class="layui-input-inline">
                    <input type="text" name="oldboatRePort" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">船舶呼号：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatCall" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">IMO编号：</label>
                <div class="layui-input-inline">
                    <input type="text" name="IMO" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">船舶种类：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatType" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">船体材料：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatMater" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">造船地点：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatCon" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">建成日期：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatMkTime" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">船舶价值：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatValue" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">总长：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatLength" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">型宽：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatWith" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">型深：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatDepth" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">总吨：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatTons" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">净吨：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatNetTons" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">主机种类：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatEnType" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">主机数目：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatEnNum" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">功率：</label>
                <div class="layui-input-inline">
                    <input type="text" name="boatPower" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">推进器种类：</label>
                <div class="layui-input-inline">
                    <input type="text" name="propType" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">推进器数目：</label>
                <div class="layui-input-inline">
                    <input type="text" name="propNum" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">船舶所有人：</label>
                <div class="layui-input-inline">
                    <input type="text" name="name" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">船舶所有人地址：</label>
                <div class="layui-input-inline">
                    <input type="text" name="address" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">法定代表人姓名：</label>
                <div class="layui-input-inline">
                    <input type="text" name="legaler" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">取得所有权日期：</label>
                <div class="layui-input-inline">
                    <input type="text" name="ownDate" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">发证机关：</label>
                <div class="layui-input-inline">
                    <input type="text" name="org" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">编号：</label>
                <div class="layui-input-inline">
                    <input type="text" name="ownNum" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">发证日期：</label>
                <div class="layui-input-inline">
                    <input type="text" name="gOwnDate" lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">身份证：</label>
                <div class="layui-input-inline">
                    <input type="text" name="idCard" lay-verify="required"  autocomplete="off" class="layui-input">
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
        layui.use(['table','layer','form'], function(){
            var table = layui.table;
            var form=layui.form;
            var layer=layui.layer;
            table.on('toolbar(userTable)',function(obj){
                switch(obj.event){
                    case 'add':
                        openAddUser();
                        break;
                    case 'delete':
                        layer.msg('删除');
                        break;
                };
            });

            table.on('tool(userTable)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
                var data = obj.data; //获得当前行数据
                var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
                if(layEvent === 'del'){ //删除
                    layer.msg("删除");
                    layer.confirm('真的删除行么', function(index){
                        obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                        layer.close(index);
                        //向服务端发送删除指令
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
                        $("#dataForm")[0].reset();
                        url="user/addUser.action";
                    }
                })
            };

            table.on('edit(userTable)', function(obj){ //注：edit是固定事件名，test是table原始容器的属性 lay-filter="对应的值"
                console.log(obj.value); //得到修改后的值
                console.log(obj.field); //当前编辑的字段名
                console.log(obj.data); //所在行的所有相关数据
                //发送post请求更新数据
                /*  $.post("url?"+obj.field+"&id="+obj.data.id,function(json){

                 }); */
            });
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
                    table.reload('userTable',{page:{curr:$(".layui-laypage-em").next().html()}});
                    //parent.location.reload();
                });
            });
            //渲染数据表格
            table.render({
                elem: '#userTable'     //渲染的目标对象
                ,url:'boatInfoServlet?action=showBoatBase'     //数据接口
                ,title: '船舶基本信息表'     //数据导出时的标题
                ,toolbar:"#userToolbar"    //表头工具条
                ,defaultToolbar:['filter', 'print', 'exports']
                ,totalRow:true//开启合并行
                ,method:'post'
                ,limit:6
                ,page:{
                    layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']//自定义分页布局
                    ,limits:[4,5,6]
                    ,first: false //不显示首页
                    ,last: false //不显示尾页
                }
                ,cols: [[               //列表数据
                    {type: 'checkbox', fixed: 'left',LAY_CHECKED:'true'}
                    , {type: 'numbers'}
                    ,{field:'boatName', title:'船名', width:80,sort:true,totalRowText:'合计'}
                    ,{field:'boatRegNum', title:'登记号码', width:120}
                    ,{field:'oldBoatName', title:'曾用名', width:150}
                    ,{field:'boatRePort', title:'船籍港', width:120, sort: true}
                    ,{field:'oldboatRePort', title:'原船籍港', width:100}
                    ,{field:'boatCall', title:'船舶呼号', width:100,totalRow:true}
                    ,{field:'IMO', title:'IMO编号', width:120}
                    ,{field:'boatType', title:'船舶种类', width:100,totalRow:true}
                    ,{field:'boatMater', title:'船体材料', width:120}
                    ,{field:'boatCon', title:'造船地点', width:120}
                    ,{field:'boatMkTime', title:'建成日期', width:100,totalRow:true}
                    ,{field:'boatValue', title:'船舶价值', width:120}
                    ,{field:'boatLength', title:'总长', width:120}
                    ,{field:'boatWith', title:'型宽', width:100,totalRow:true}
                    ,{field:'boatDepth', title:'型深', width:120}
                    ,{field:'boatTons', title:'总吨', width:120}
                    ,{field:'boatNetTons', title:'净吨', width:100,totalRow:true}
                    ,{field:'boatEnType', title:'主机种类', width:120}
                    ,{field:'boatEnNum', title:'主机数目', width:120}
                    ,{field:'boatPower', title:'功率', width:100,totalRow:true}
                    ,{field:'propType', title:'推进器种类', width:120}
                    ,{field:'propNum', title:'推进器数目', width:120}
                    ,{field:'name', title:'船舶所有人', width:100,totalRow:true}
                    ,{field:'address', title:'船舶所有人地址', width:120}
                    ,{field:'legaler', title:'法定代表人姓名', width:120}
                    ,{field:'ownDate', title:'取得所有权日期', width:100,totalRow:true}
                    ,{field:'org', title:'发证机关', width:120}
                    ,{field:'ownNum', title:'编号', width:120}
                    ,{field:'gOwnDate', title:'发证日期', width:100,totalRow:true}
                    ,{field:'idCard', title:'身份证', width:120}
                    ,{fixed: 'right', title:'操作', toolbar: '#userBar', width:150}
                ]]
            })
        });
    </script>
</body>
</html>
