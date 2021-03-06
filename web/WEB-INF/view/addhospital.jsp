<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 小安卓
  Date: 2021/3/18
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>



<%--          医院信息页面                 --%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>吉林工师JAVA工作室</title>

    <!--dynamic table-->
    <link href="../js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
    <link href="../js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="../js/data-tables/DT_bootstrap.css" />

    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet">



    <script src="../js/html5shiv.js"></script>
    <script src="../js/respond.min.js"></script>

</head>

<body class="sticky-header">

<section>
    <%-------------------------------------------------------------------------------------------------------%>
    <div class="left-side sticky-left-side">

        <div class="left-side-inner">

            <!-- visible to small devices only -->

            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li class="menu-list"><a href="${pageContext.request.contextPath}/HospitalController/hospitalIndex01"><i class="fa fa-laptop"></i> <span>门诊管理</span></a></li>

                <li><a href="${pageContext.request.contextPath}/HospitalController/addhospital"><i class="fa fa-home"></i> <span>添加医院</span></a></li>

                <li class="menu-list"><a href="${pageContext.request.contextPath}/CustomerController/goIndex01"><i class="fa fa-home"></i> <span>排队信息</span></a></li>

                <li><a href="${pageContext.request.contextPath}/newscontroller/newsshow"><i class="fa fa-bullhorn"></i> <span>新闻中心</span></a></li>

                <li class="menu-list"><a href=""><i class="fa fa-envelope"></i> <span>意见反馈</span></a></li>

                <li class="menu-list"><a href="${pageContext.request.contextPath}/PermissionController/checkPermission?adminId=${result.id}"><i class="fa fa-envelope"></i> <span>返回主页</span></a></li>
            </ul>
            <!--sidebar nav end-->

        </div>

    </div>


    <%--======================================================================================================--%>


    <!-- main content start-->
    <div class="main-content" >


        <%--添加医院功能界面--%>
        <table>
            <div class="header-section">
                <%--返回按钮--%>
                <a href="${pageContext.request.contextPath}/AdminController/login" class="toggle-btn"><i class="fa fa-bars"></i></a>

            </div>

            <form action="${pageContext.request.contextPath}/HospitalController/hospitalIndex" method="post">
                <input type="text" name="province" placeholder="请输入省份">
                <input type="text" name="city" placeholder="请输入城市">
                <input type="text" name="name" placeholder="请输入医院名称">
                <input type="submit" name="btn" value="确认添加">
            </form>
        </table>


    </div>
    <!-- main content end-->
</section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>
<script src="../js/jquery.nicescroll.js"></script>

<!--dynamic table-->
<script type="text/javascript" language="javascript" src="../js/advanced-datatable/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="../js/data-tables/DT_bootstrap.js"></script>
<!--dynamic table initialization -->


<!--common scripts for all pages-->
<script src="${pageContext.request.contextPath}/js/scripts.js"></script>

</body>
</html>
