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

    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">


    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/moment.js/2.22.0/moment-with-locales.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/test.js"></script>

    <script>
        //这是时间的选择面板的方法
        $(function() {
            $('#form1').hide();
            var picker1 = $('#datetimepicker1').datetimepicker({
                daysOfWeekDisabled: [0,6],
                format: 'YYYY-MM-DD HH',
                locale: moment.locale('zh-cn'),
                //minDate: '2016-7-1'
            });
        });
        $('#datetimepicker1').datetimepicker({
            format: 'YYYY-MM-DD HH',
            locale: moment.locale('zh-cn'),
        });


    </script>
    <style>
        .user-agreement{
            padding-top: 5px;
            margin-left: 1%;
            color: blue;

        }
        .checkbox{
            padding-left: 630px;
            padding-top: -100px;

        }
        .login-wrap{
            height: 540px;
        }
    </style>

</head>

<body class="login-body">

<div class="container">

    <form class="form-signin" action="${pageContext.request.contextPath}/CustomerController/goIndex" method="post">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title"></h1>
            <img src="${pageContext.request.contextPath}/images/login-logo.png" alt=""/>
        </div>


        <div class="login-wrap">
            <p>请在下面注册您的账号</p>
            <%--医院序号--%>
            <input type="text" autofocus=""  class="form-control" value="${result.id}" name="id" readonly>
            <%--医院名称--%>
            <input type="text" autofocus=""  class="form-control" value="${name}" name="cfrom" readonly>
            <input type="text" autofocus="" id="name"  class="form-control" placeholder="请输入姓名" name="name"><span id="name01"></span>
            <input type="text" autofocus=""  class="form-control" placeholder="请输入性别" name="radio">
            <input type="text" autofocus=""  class="form-control" placeholder="请输入身份证" name="score" >
            <input type="text" autofocus=""  class="form-control" placeholder="请输入电话号码" name="tel" >
            <input type="text" class="timeInput form-control" name="date" id="datetimepicker1" />

            <button id="submit" type="submit" class="btn btn-lg btn-login btn-block">预约
                <%--<i class="fa fa-check"></i>--%>
            </button>
        </div>
        <label class="checkbox">
            <input type="checkbox"> 我已阅读并同意遵守
        </label>
        <p class="user-agreement">《用户协议及隐私条款》</p>
    </form>


</div>



<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<%--<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>--%>


<script src="${pageContext.request.contextPath}/js/modernizr.min.js"></script>

</body>
</html>
