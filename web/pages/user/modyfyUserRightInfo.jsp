<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="col-md-12 column">
                    <label class="col-md-4">用户ID：</label>
                    <div class="col-md-4 userId">${sessionScope.user.id}</div>
                    <small style="color: grey">用户ID不可修改</small>
                </div>
                <div class="col-md-12 column">
                    <label class="col-md-4">员工姓名：</label>
                    <div class="col-md-4">${sessionScope.user.username}</div>
                    <button name="modifyName" class="modifyName">修改员工姓名</button>
                </div>
                <div class="col-md-12 column">
                    <label class="col-md-4">联系电话：</label>
                    <div class="col-md-4">${sessionScope.user.phone}</div>
                    <button name="modifyPhone" class="modifyPhone">修改联系电话</button>
                </div>
            </div>
        </div>
</div>
