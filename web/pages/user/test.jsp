<%--
  Created by IntelliJ IDEA.
  User: 11372
  Date: 2020/11/5
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>jQuery弹出层效果</title>
    <meta content="网页特效,特效代码,jQuery,css特效,Js代码" name="keywords" />
    <meta content="jQuery弹出层效果，有关闭按钮，代码简单易懂，可以随意修改弹出层的参数。" name="description" />
    <script src="/js/jquery-1.4.2.min.js" type="text/javascript"></script>
    <style>
        .black_overlay{
            display: none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: black;
            z-index:1001;
            -moz-opacity: 0.8;
            opacity:.80;
            filter: alpha(opacity=80);
        }
        .white_content {
            display: none;
            position: absolute;
            top: 10%;
            left: 10%;
            width: 80%;
            height: 80%;
            border: 16px solid lightblue;
            background-color: white;
            z-index:1002;
            overflow: auto;
        }
    </style>
    <script type="text/javascript">
        //弹出隐藏层
        function ShowDiv(show_div,bg_div){
            document.getElementById(show_div).style.display='block';
            document.getElementById(bg_div).style.display='block' ;
            var bgdiv = document.getElementById(bg_div);
            bgdiv.style.width = document.body.scrollWidth;
// bgdiv.style.height = $(document).height();
            $("#"+bg_div).height($(document).height());
        };
        //关闭弹出层
        function CloseDiv(show_div,bg_div)
        {
            document.getElementById(show_div).style.display='none';
            document.getElementById(bg_div).style.display='none';
        };
    </script>
</head>
<body>
<input id="Button1" type="button" value="点击弹出层" onclick="ShowDiv('MyDiv','fade')" />
<!--弹出层时背景层DIV-->
<div id="fade" class="black_overlay">
</div>
<div id="MyDiv" class="white_content">
    <div style="text-align: right; cursor: default; height: 40px;" id="move">
        <span style="font-size: 16px;" onclick="CloseDiv('MyDiv','fade')">关闭</span>
    </div>
    目前来说，我还是喜欢这个自己改造的弹出层。自己在项目中也用的是这个。
</div>
</body>
</html>