<%--
  Created by IntelliJ IDEA.
  User: 11372
  Date: 2020/11/16
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/pages/common/header.jsp"%>
</head>
<body>
    <form class="layui-form" action="boatInfoServlet" method="post">
        <input type="hidden" name="action" value="addBoat">
        <div class="row jxER">
            <span>船主的基本资料</span>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">船主姓名</label>
            <div class="layui-input-inline">
                <input type="text" id="name" name="name" required  lay-verify="required" placeholder="请输入船主姓名" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">身份证</label>
            <div class="layui-input-inline">
                <input type="text" id="idCard" name="idCard" required lay-verify="required" placeholder="请输入身份证" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">详细住址</label>
            <div class="layui-input-inline">
                <input style="width: 400px" type="text" id="address" name="address" required lay-verify="required" placeholder="请输入详细住址" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="row jxER">
            <span>船只基本资料</span>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">船只名称</label>
            <div class="layui-input-inline">
                <input type="text" id="boatName" name="boatName" required lay-verify="required" placeholder="请输入船只名称" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">船舶类型</label>
            <div class="layui-input-inline">
                <input type="text" id="boatType" name="boatType" required lay-verify="required" placeholder="请输入船舶类型" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">船体材料</label>
            <div class="layui-input-inline">
                <input type="text" id="boatMater" name="boatMater" required lay-verify="required" placeholder="请输入船体材料" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">机型</label>
            <div class="layui-input-inline">
                <input type="text" id="boatModel" name="boatModel" required lay-verify="required" placeholder="请输入船只机型" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">船籍港</label>
            <div class="layui-input-inline">
                <input type="text" id="boatRePort" name="boatRePort" required lay-verify="required" placeholder="请输入船籍港" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">建造厂</label>
            <div class="layui-input-inline">
                <input type="text" id="boatCon" name="boatCon" required lay-verify="required" placeholder="请输入建造厂" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">船登记号</label>
            <div class="layui-input-inline">
                <input type="text" id="boatRegNum" name="boatRegNum" required lay-verify="required" placeholder="请输入船舶登记号" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">发证机关</label>
            <div class="layui-input-inline">
                <input type="text" name="org" id="org" required lay-verify="required" placeholder="请输入发证机关" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">所有权证书编号</label>
            <div class="layui-input-inline">
                <input type="text" name="ownNum" id="ownNum" required lay-verify="required" placeholder="请输入所有权证书编号" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">发证日期</label>
            <div class="layui-input-inline">
                <input type="text" name="gOwnDate" id="gOwnDate" required lay-verify="required" placeholder="请输入发证日期" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">建成时间</label>
            <div class="layui-input-inline">
                <input type="text" id="boatMkTime" name="boatMkTime" required lay-verify="required" placeholder="请输入建成时间" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">总长</label>
            <div class="layui-input-inline">
                <input type="text" id="boatLength" name="boatLength" required lay-verify="required" placeholder="请输入总长" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">型宽</label>
            <div class="layui-input-inline">
                <input type="text" id="boatWith" name="boatWith" required lay-verify="required" placeholder="请输入型宽" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">型深</label>
            <div class="layui-input-inline">
                <input type="text" id="boatDepth" name="boatDepth" required lay-verify="required" placeholder="请输入型深" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">总吨</label>
            <div class="layui-input-inline">
                <input type="text" id="boatTons" name="boatTons" required lay-verify="required" placeholder="请输入总吨" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">净吨</label>
            <div class="layui-input-inline">
                <input type="text" id="boatNetTons" name="boatNetTons" required lay-verify="required" placeholder="请输入净吨" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">主机功率</label>
            <div class="layui-input-inline">
                <input type="text" id="boatPower" name="boatPower" required lay-verify="required" placeholder="请输入主机功率" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">主机种类</label>
            <div class="layui-input-inline">
                <input type="text" id="boatEnType" name="boatEnType" required lay-verify="required" placeholder="请输入主机种类" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">主机数目</label>
            <div class="layui-input-inline">
                <input type="text" id="boatEnNum" name="boatEnNum" required lay-verify="required" placeholder="请输入主机数目" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">船曾用名</label>
            <div class="layui-input-inline">
                <input type="text" name="oldBoatName" id="oldBoatName" required lay-verify="required" placeholder="请输入船曾用名" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">原船籍港</label>
            <div class="layui-input-inline">
                <input type="text" name="oldboatRePort" id="oldboatRePort" required lay-verify="required" placeholder="请输入原船籍港" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">船舶呼号</label>
            <div class="layui-input-inline">
                <input type="text" name="boatCall" id="boatCall" required lay-verify="required" placeholder="请输入船舶呼号" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">IMO编号</label>
            <div class="layui-input-inline">
                <input type="text" name="IMO" id="IMO" required lay-verify="required" placeholder="请输入IMO编号" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">船舶价值</label>
            <div class="layui-input-inline">
                <input type="text" name="boatValue" id="boatValue" required lay-verify="required" placeholder="请输入船舶价值" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">推进器种类</label>
            <div class="layui-input-inline">
                <input type="text" name="propType" id="propType" required lay-verify="required" placeholder="请输入推进器种类" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">推进器数目</label>
            <div class="layui-input-inline">
                <input type="text" name="propNum" id="propNum" required lay-verify="required" placeholder="请输入推进器数目" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">法定代表人姓名</label>
            <div class="layui-input-inline">
                <input type="text" name="legaler" id="legaler" required lay-verify="required" placeholder="请输入法定代表人姓名" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">取得所有权日期</label>
            <div class="layui-input-inline">
                <input type="text" name="ownDate" id="ownDate" required lay-verify="required" placeholder="请输入取得所有权日期" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">


        </div>

        <div class="layui-upload">
            <button type="button" class="layui-btn" id="test1">上传图片</button>
            <div class="layui-upload-list" style="height: 100px;width: 100px">
                <img class="layui-upload-img" id="demo1" style="height: 100px;width: 100px">
                <p id="demoText"></p>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <script type="text/javascript">
        //Demo
        layui.use('form', function(){
            var form = layui.form;
            var $ = layui.$;
            //监听提交
            form.on('submit(formDemo)', function(data){
                layer.msg(JSON.stringify("正在上传，请稍后"));
                //return false;
            });
        });

        layui.use('upload', function(){
            var $ = layui.jquery
                ,upload = layui.upload;
            //普通图片上传
            var uploadInst = upload.render({
                elem: '#test1'
                ,url: 'uploadServlet' //改成您自己的上传接口
                ,multiple:true
                ,method:'POST'
                ,data:{}
                ,before: function(obj){
                    // alert($("#boatName").val());
                    //预读本地文件示例，不支持ie8
                    obj.preview(function(index, file, result){
                        $('#demo1').attr('src', result); //图片链接（base64）
                    });
                    this.data.name = $("#boatName").val();
                }
                ,done: function(res){
                    //如果上传失败
                    if(res.code == 0){
                        return layer.msg('上传失败');
                    }
                    //上传成功
                    if (res.code==200){
                        return layer.msg('上传成功');
                    }
                }
                ,error: function(){
                    //演示失败状态，并实现重传
                    var demoText = $('#demoText');
                    demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                    demoText.find('.demo-reload').on('click', function(){
                        uploadInst.upload();
                    });
                }
            });
        });
    </script>
</body>
</html>
