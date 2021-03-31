<%--
  Created by IntelliJ IDEA.
  User: 小安卓
  Date: 2021/3/18
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>


<%--            注册页面                --%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>吉林工师JAVA工作室</title>      <%-- 搜索标题--%>

    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet">


</head>

<body class="login-body">

<div class="container">


    <form class="form-signin" action="${pageContext.request.contextPath}/AdminController/doRegister" method="post">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title"></h1>   <%-- 标题--%>
            <img src="../images/login-logo.png" alt=""/>
        </div>


        <div class="login-wrap">
            <p>请输入您的注册账户</p>
            <p style="color: #942a25">${error}</p>
            <input type="text" autofocus="" placeholder="请输入注册手机号" class="form-control" name="account">
            <input type="text" autofocus="" placeholder="请输入密码" class="form-control" name="password">

            <label class="checkbox">
                <input type="checkbox" value="agree this condition"> 我已阅读并同意遵守
            </label>
            <button type="submit" class="btn btn-lg btn-login btn-block" >注册
                <%--<i >&lt;%&ndash;class="fa fa-check"&ndash;%&gt;</i>--%>
            </button>
            <a href="${pageContext.request.contextPath}/entry.jsp" type="submit" class="btn btn-lg btn-login btn-block">登录</a>

            <div class="registration">
                <a href="login.html" class="">
                    用户协议
                </a>
            </div>

        </div>

    </form>

</div>



<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>

</body>
</html>
