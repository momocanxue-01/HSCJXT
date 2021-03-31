<%--
  Created by IntelliJ IDEA.
  User: 小安卓
  Date: 2021/3/18
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>


<%--                   预约页面(进入医院信息页面后点击预约进入此页面)                --%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>吉林工师JAVA工作室</title>

    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet">


</head>

<body class="login-body">

<div class="container">

    <form class="form-signin" action="${pageContext.request.contextPath}/CustomerController/goIndex" method="post">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title"></h1>
            <img src="../images/login-logo.png" alt=""/>
        </div>


        <div class="login-wrap">
            <p>请在下面注册您的账号</p>
            <input type="text" autofocus=""  class="form-control" value="${id}" name="tel" readonly>
            <input type="text" autofocus=""  class="form-control" value="${name}" name="cfrom" readonly>
            <input type="text" autofocus=""  class="form-control" placeholder="请输入姓名" name="name">
            <input type="text" autofocus=""  class="form-control" placeholder="请输入性别" name="radio">
            <input type="text" autofocus=""  class="form-control" placeholder="请输入身份证号码" name="score" >
            <label class="checkbox">
                <input type="checkbox" value="agree this condition"> 我已阅读并同意遵守
            </label>
            <button type="submit" class="btn btn-lg btn-login btn-block">预约
                <%--<i class="fa fa-check"></i>--%>
            </button>

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
