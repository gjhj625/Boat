<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--导航条-->
<div class="row" >
    <nav class="navbar">
        <div class="container-fluid">
                <div id="logo"></div>
                <div class="main_info" style="margin-top: 35px">
                    <div class="info_id" style="display: none">
                        ${sessionScope.user.id}
                    </div>
                    <div class="login_info">
                        ${sessionScope.user.username}&nbsp;&nbsp;&nbsp;
                        <font color="red">您的身份是：${sessionScope.user.power}</font>
                    </div>
                    <div class="modify">
                        <a id="Button1" type="button" value="点击弹出层" onclick="ShowDiv('MyDiv','fade')" >修改密码</a>
                        |
                        <a>设置</a>
                        |
                        <a href="quitUser?action=quit">注销</a>
                    </div>

                    <div id="fade" class="black_overlay">
                    </div>
                    <div id="MyDiv" class="white_content">
                        <div id="xxx" class="panel-header panel-header-noborder window-header" style="width: 395px;">
                            <div class="panel-with-icon" style="background-color: #95B8E7">
                                <i class="fa fa-gear" style="font-size:15px"></i>修改密码
                                <span style="font-size: 16px;margin-right: 20px;float: right" onclick="CloseDiv('MyDiv','fade')"><i class="fa fa-close" style="font-size:15px"></i></span>
                            </div>
                        </div>
                        <div align="center">
                            <div>
                                <span class="errorMsg">
                                    ${pageContext.request.getAttribute("msg")}
                                </span>
                            </div>
                            <form action="http://localhost:8080/boat/userServlet">
                                <input type="hidden" name="action" value="updatePassword">
                                <input type="hidden" name="userId" value="${sessionScope.user.id}">
                                <div class="form-group">
                                    <label>旧密码：</label>
                                    <input type="text" name="oldPassword" id="oldPassword">
                                </div>
                                <div class="form-group">
                                    <label>新密码：</label>
                                    <input type="text" name="newPassword" id="newPassword">
                                </div>
                                <div class="form-group">
                                    <label>确认密码：</label>
                                    <input type="text" name="renewPassword" id="renewPassword">
                                </div>
                                <div class="form-group">
                                    <input id="sub_btn" type="submit" class="btn btn-success">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            <div id="topbg">
                <div id="m1_container">
                    <div class="row clearfix">
                        <div class="col-md-4 column" style="width: 768px;position: absolute;bottom: 0px;transform: translateX(-50%)">
                            <div class="btn-group">
                                <button style="height: 30px" class="btn btn-default"><small>业务办理</small></button> <button style="height: 30px" data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#">操作</a>
                                    </li>
                                    <li class="disabled">
                                        <a href="#">另一操作</a>
                                    </li>
                                    <li class="divider">
                                    </li>
                                    <li>
                                        <a href="#">其它</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="btn-group">
                                <button style="height: 30px" class="btn btn-default"><small>信息查询</small></button> <button style="height: 30px" data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#">操作</a>
                                    </li>
                                    <li class="disabled">
                                        <a href="#">另一操作</a>
                                    </li>
                                    <li class="divider">
                                    </li>
                                    <li>
                                        <a href="#">其它</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </nav>
</div>