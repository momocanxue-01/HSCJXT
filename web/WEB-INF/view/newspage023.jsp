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
                <li><a href="#"><i class="fa fa-home"></i> <span>医疗管理</span></a></li>

                <li class="menu-list"><a href=""><i class="fa fa-laptop"></i> <span>门诊管理</span></a></li>

                <li class="menu-list"><a href=""><i class="fa fa-book"></i> <span>社区工作部</span></a></li>

                <li class="menu-list"><a href=""><i class="fa fa-cogs"></i> <span>防护须知</span></a></li>

                <li><a href="fontawesome.html"><i class="fa fa-bullhorn"></i> <span>新闻中心</span></a></li>

                <li class="menu-list"><a href=""><i class="fa fa-envelope"></i> <span>意见反馈</span></a></li>
            </ul>
            <!--sidebar nav end-->

        </div>

    </div>


<%--======================================================================================================--%>

    <!-- main content start-->
    <div class="main-content" >

        <!-- header section start-->
        <div class="header-section">

            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <!--toggle button end-->

            <!--search start-->
            <form class="searchform" action="index.html" method="post">
                <input type="text" class="form-control" name="keyword" placeholder="医院搜索" />
                <input type="button" class="form-control" name="keyword" value="搜索" />
            </form>
            <!--search end-->

            <!--notification menu start -->
            <div class="menu-right">
                <ul class="notification-menu">

                </ul>
            </div>
            <!--notification menu end -->

        </div>
        <!-- header section end-->

        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">
                            核酸检测
                        </header>
                        
                        <div class="panel-body">
                            <div class="adv-table">
                                <table  class="display table table-bordered table-striped" id="dynamic-table">
                                    <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>省份</th>
                                        <th>城市</th>
                                        <th class="hidden-phone">医院</th>
                                        <<th class="hidden-phone">点击预约</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${hospital}" var="hospital">
                                    <tr class="gradeX">
                                        <td>${hospital.id}</td>
                                        <td>${hospital.province}</td>
                                        <td>${hospital.city}</td>
                                        <td class="center hidden-phone">${hospital.name}</td>
                                        <td>
                                            <button>
                                                <a href="${pageContext.request.contextPath}/CustomerController/yuyueselect?id=${result.id}&name=${hospital.name}">预约</a>
                                            </button>

                                                <c:forEach items="${list}" var="permission" varStatus="i">
                                                    <c:if test="${permission.name=='用户授权'}">
                                                        <button>
                                                            <a href="${pageContext.request.contextPath}/CustomerController/hospitalDelete?id=${hospital.id}">删除</a>
                                                        </button>

                                                    </c:if>
                                                </c:forEach>

                                        </td>
                                    </tr>
                                    </c:forEach>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">

                </div>
            </div>
        </div>
        <!--body wrapper end-->


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
<script src="../js/dynamic_table_init.js"></script>

<!--common scripts for all pages-->
<script src="js/scripts.js"></script>

</body>
</html>
