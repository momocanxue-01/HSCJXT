<%--
  Created by IntelliJ IDEA.
  User: liwenpei
  Date: 2021/4/21
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">

    <script type="text/javascript" src="js/jquery-1.11.2.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/moment.js/2.22.0/moment-with-locales.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
    <script src="js/test.js"></script>
    <style type="text/css">
        .myrow {
            display: flex;
            flex-direction: row;
            margin-left:1em;
        }
    </style>
    <script>
        $(function () {
            $('#form1').hide();
            var picker1 = $('#datetimepicker1').datetimepicker({
                format: 'YYYY-MM',
                locale: moment.locale('zh-cn'),
                //minDate: '2016-7-1'
            });
        });
        $('#datetimepicker1').datetimepicker({
            format: 'YYYY-MM',
            locale: moment.locale('zh-cn'),
            defaultDate: '2020-4'
        });

        function getDateFunction() {
            var date1 = $('#date').val();
            //var date2 = document.getElementById("date");
            document.getElementById("date1").innerHTML = date1;
            //document.getElementById("date2").innerHTML = date2;
        }
    </script>
</head>
<!--获取年月-->
<!--监听结束-->
<body>

<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-12">
                <div class="col-lg-6">
                    <div class="form-group ">
                        <div class="myrow">
                            <div class='input-group date' style="width: 14em;" id='datetimepicker1'>
                    <span class="input-group-addon">选择时间
                    <span class="glyphicon glyphicon-calendar"></span>
					</span>
                                <input type='text' class="timeInput form-control" id="date"/>
                            </div>
                            <button class="btn btn-default" onclick="getDateFunction()">提交日期</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <p id="date1"></p>
    </div>

</div>
</body>
</html>
