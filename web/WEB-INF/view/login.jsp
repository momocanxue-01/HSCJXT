<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 小安卓
  Date: 2021/3/21
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>


<%--         登录转载页面                      --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>吉林工师JAVA工作室</title>
<head>
    <style type="text/css">
        .header1{
            height: 170px;
            width: 98%;
            /*            background-color: aqua;*/
            margin-left: 1%;
        }
        .header2{
            width: 100%;
            height: 350px;
            margin-top: 3px;

        }
        .firstdiv{
            height: 521px;
        }
        #yuyue{
            width: 490px;

            text-align: center;
        }

        #fff1{
            /*            float: left;*/
        }
        #pp{
            margin-top: 100px;
        }
        #btn-login{
            width: 100%;
            height:90px;
            background-image: url("../../images/btn.jpg");
            font-size: 20px;

        }


    </style>

</head>

<body>
<div class="firstdiv">
    <table>
        <tr class="header1">
            <img class="header1" src="../img/header.jpg">
        </tr>
        <tr>
            <img class="header2" src="../img/疫情防控.jpg">
        </tr>
    </table>
</div>
<div>
    <table>
        <tr id="btn-login2">
            <td id="yuyue">
                <a href="${pageContext.request.contextPath}/AdminController/login?id=${result.id}">
                    <button id="btn-login" title="">
                        预约
                    </button>
                </a>
            </td>
            <td id="yuyue">
                <a href="${pageContext.request.contextPath}/CustomerController/goIndex01">
                    <button id="btn-login">
                        排队信息
                    </button>
                </a>
            </td>
            <td id="yuyue">
                <a href="${pageContext.request.contextPath}/PermissionController/administratorlogin?id=${result.id}">
                    <button id="btn-login">
                        管理员入口
                    </button>
                </a>
            </td>
            <td id="yuyue">
                <a href="#">
                    <button id="btn-login">
                        反馈意见
                    </button>
                </a>
            </td>
        </tr>
    </table>
</div>
<div>
    ${error}
</div>

<div style="text-align: center">
    <p id="pp">吉林工程技术师范学院Java工作室项目</p>
</div>

</body>

</html>

