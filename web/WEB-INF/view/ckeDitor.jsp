<%--
  Created by IntelliJ IDEA.
  User: 小安卓
  Date: 2021/4/20
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <!-- 新Bootstrap核心CSS文件 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <!-- 可选的Bootstrap主题文件 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css"/>
    <!-- Bootstrap组合CSS文件 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-combined.min.css"/>
    <style>
        img{
            width: 100%;
            margin-left: 7%;
            /*height:250px;*/
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="carousel slide" id="carousel-855633">
                <ol class="carousel-indicators">
                    <li data-slide-to="0" data-target="#carousel-855633">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-855633">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-855633" class="active">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item">
                        <img alt="" src="../img/1.jpg" />
                        <%--<div class="carousel-caption">--%>
                        <%--<h4>--%>
                        <%--棒球--%>
                        <%--</h4>--%>
                        <%--<p>--%>
                        <%--棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。--%>
                        <%--</p>--%>
                        <%--</div>--%>
                    </div>
                    <div class="item">
                        <img alt="" src="../img/2.jpg" />
                        <%--<div class="carousel-caption">--%>
                        <%--<h4>--%>
                        <%--冲浪--%>
                        <%--</h4>--%>
                        <%--<p>--%>
                        <%--冲浪是以海浪为动力，利用自身的高超技巧和平衡能力，搏击海浪的一项运动。运动员站立在冲浪板上，或利用腹板、跪板、充气的橡皮垫、划艇、皮艇等驾驭海浪的一项水上运动。--%>
                        <%--</p>--%>
                        <%--</div>--%>
                    </div>
                    <div class="item active">
                        <img alt="" src="../img/3.jpg" />
                        <%--<div class="carousel-caption">--%>
                        <%--<h4>--%>
                        <%--自行车--%>
                        <%--</h4>--%>
                        <%--<p>--%>
                        <%--以自行车为工具比赛骑行速度的体育运动。1896年第一届奥林匹克运动会上被列为正式比赛项目。环法赛为最著名的世界自行车锦标赛。--%>
                        <%--</p>--%>
                        <%--</div>--%>
                    </div>
                    <%--</div> <a data-slide="prev" href="#carousel-855633" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-855633" class="right carousel-control">›</a>--%>
                </div>
                <h2>
                    ${admin.account}
                    意见反馈：
                </h2>
                <form action="${pageContext.request.contextPath}/CkController/doAdd" method="post">
                    <input type="hidden" value="${admin.account}" name="account">
                    <textarea  id="describe" name="describe"></textarea>
                    <br>
                    <p>
                        <input type="submit" value="提交 »" class="btn">
                    </p>
                </form>
            </div>
        </div>
    </div>
</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="../js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="../js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="https://cdn.ckeditor.com/4.10.1/standard/ckeditor.js"></script>
<script>
    <%--富文本编辑器本质上就是改变的文本域--%>
    CKEDITOR.replace("describe", {width: 1600, height: 150, });
    //调整一下富文本编辑器的大小

</script>
</html>
