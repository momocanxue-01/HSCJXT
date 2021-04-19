<%--
  Created by IntelliJ IDEA.
  User: 小安卓
  Date: 2021/3/2
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%--

                登录页面

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>吉林工师JAVA工作室</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
</head>
<body class="is-preload">

<!-- Header -->
<header id="header">
    <h1>待到春风十里时，愿有樱花漫盛世</h1>
    <p>各奋愚公之愿,即可移山;共怀精卫之心,不难填海。  ——蔡锷<br />
               (勠力同心，战“疫”必胜！)</p>
</header>

<!-- Signup Form -->
${error}
<form id="signup-form" method="post" action="${pageContext.request.contextPath}/AdminController/doLogin" >
    <input type="text" name="account" id="em" placeholder="请输入账号" />
    <br />
    <input type="text" name="password" id="email" placeholder="请输入密码" />
    <button type="submit">登录</button>
    <a href="${pageContext.request.contextPath}/AdminController/doLoging">注册</a>
</form>

<%--几个邮箱的连接图标,暂时不用--%>
<%--<!-- Footer -->--%>
<%--<footer id="footer">--%>
    <%--<ul class="icons">--%>
        <%--<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>--%>
        <%--<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>--%>
        <%--<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>--%>
        <%--<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>--%>
    <%--</ul>--%>
<%--</footer>--%>

<!-- Scripts -->
<script src="assets/js/main.js"></script>

</body>
</html>
