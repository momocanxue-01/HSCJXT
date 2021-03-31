<%--
  Created by IntelliJ IDEA.
  User: 小安卓
  Date: 2021/3/21
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>


<%--         登录转载页面                      --%>



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
            width: 98%;
            height: 350px;
            margin-top: 3px;
            margin-left: 1%;

        }
        .firstdiv{
            height: 580px;
        }
        #yuyue{
            width: 500px;
            text-align: center;
        }
        #fff1{
            /*            float: left;*/
        }
        #pp{
            margin-top: 100px;
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
        <tr>
            <td id="yuyue">
                <a href="${pageContext.request.contextPath}/AdminController/login">
                    <p id="fff1">预约</p>
                </a>
            </td>
            <td id="yuyue">
                <a href="${pageContext.request.contextPath}/CustomerController/goIndex01">我的预约</a>
            </td>
            <td id="yuyue"><a href="#">新闻中心</a></td>
            <td id="yuyue"><a href="#">意见反馈</a></td>
        </tr>
    </table>
</div>

<div style="text-align: center">
    <p id="pp">吉林工程技术师范学院Java工作室项目</p>
</div>

</body>

</html>

