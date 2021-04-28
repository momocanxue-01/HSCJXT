<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 小安卓
  Date: 2021/3/18
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>


<%--              信息展示页面(点击预约进入此页面可查看所有预约人员信息时间)                  --%>



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


    <div class="left-side sticky-left-side">

        <div class="left-side-inner">

            <!-- visible to small devices only -->

            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li class="menu-list"><a href="${pageContext.request.contextPath}/HospitalController/hospitalIndex01?id=${result.id}"><i class="fa fa-laptop"></i> <span>门诊管理</span></a></li>

                <c:forEach items="${list}" var="permission" varStatus="i">
                    <c:if test="${permission.name=='用户修改'}">
                        <li><a href="${pageContext.request.contextPath}/HospitalController/addhospital"><i class="fa fa-home"></i> <span>添加医院</span></a></li>
                    </c:if>
                </c:forEach>

                <li class="menu-list"><a href="${pageContext.request.contextPath}/CustomerController/goIndex01"><i class="fa fa-home"></i> <span>排队信息</span></a></li>

                <li><a href="${pageContext.request.contextPath}/newscontroller/newsshow"><i class="fa fa-bullhorn"></i> <span>新闻中心</span></a></li>

                <li class="menu-list"><a href="${pageContext.request.contextPath}/newscontroller/CKEditor"><i class="fa fa-envelope"></i> <span>意见反馈</span></a></li>

                <li class="menu-list"><a href="${pageContext.request.contextPath}/PermissionController/checkPermission?adminId=${result.id}"><i class="fa fa-envelope"></i> <span>返回主页</span></a></li>
            </ul>
            <!--sidebar nav end-->

        </div>

    </div>







    <!-- main content start-->
    <div class="main-content" >

        <!-- header section start-->
        <div class="header-section">

            <%--返回按钮--%>
            <a href="${pageContext.request.contextPath}/AdminController/login" class="toggle-btn"><i class="fa fa-bars"></i></a>


            <!--search start-->
            <%--<form class="searchform" action="index.html" method="post">--%>
                <%--<input type="text" class="form-control" name="keyword" placeholder="信息搜索" />--%>
                <%--<input type="button" class="form-control" name="keyword" value="搜索" >--%>
            <%--</form>--%>
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
                        <div class="panel-body">
                            <div class="adv-table">
                                <table  class="display table table-bordered table-striped" id="dynamic-table">
                                    <thead>
                                    <tr>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th class="hidden-phone">医院</th>
                                        <th>身份证号</th>
                                        <th class="hidden-phone">电话</th>
                                        <th class="hidden-phone">预约时间</th>
                                        <c:forEach items="${list}" var="permission" varStatus="i">
                                            <c:if test="${permission.name=='用户修改'}">
                                                <th class="hidden-phone">编辑</th>
                                            </c:if>
                                        </c:forEach>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${cp.pageList}" var="customer" varStatus="i">
                                        <tr>
                                            <td>${customer.name}</td>
                                            <td>${customer.radio}</td>
                                            <td>${customer.cfrom}</td>
                                            <td>${customer.score}</td>
                                            <td>${customer.tel}</td>
                                            <td>${customer.formateTime(customer.date)} </td>
                                            <%--排队信息的鉴权，如果是管理员则能删除用户--%>
                                             <c:forEach items="${list}" var="permission" varStatus="i">
                                                 <c:if test="${permission.name=='用户修改'}">
                                                    <td>
                                                       <button>
                                                          <a href="${pageContext.request.contextPath}/CustomerController/deleteCustomer?id=${customer.id}">删除</a>
                                                        </button>
                                                    </td>
                                                 </c:if>
                                             </c:forEach>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <%--开始加入分页相关内容--%>
                                当前第${cp.currentPage}页，共${cp.totalPage}页
                                <%--上一页超链接--%>
                                <c:if test="${cp.currentPage gt 1}">
                                    <a href="${pageContext.request.contextPath}/CustomerController/doCustomerPaging?currentPage=${cp.currentPage - 1}">上一页</a>
                                </c:if>

                                <%--每页页码连接--%>
                                <c:forEach begin="1" end="${cp.totalPage}" step="1" var="i">
                                    <a href="${pageContext.request.contextPath}/CustomerController/doCustomerPaging?currentPage=${i}">${i}</a>
                                </c:forEach>
                                <%--下一页超链接--%>
                                <c:if test="${cp.currentPage lt cp.totalPage}">
                                    <a href="${pageContext.request.contextPath}/CustomerController/doCustomerPaging?currentPage=${cp.currentPage + 1}">下一页</a>
                                </c:if>
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
<script type="text/javascript" language="javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="../js/data-tables/DT_bootstrap.js"></script>
<!--dynamic table initialization -->
<script src="../js/dynamic_table_init.js"></script>

<!--common scripts for all pages-->
<script src="js/scripts.js"></script>

</body>
</html>
