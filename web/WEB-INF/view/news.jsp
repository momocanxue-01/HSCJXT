<%--
  Created by IntelliJ IDEA.
  User: liwenpei
  Date: 2021/4/18
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Swiper demo</title>
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">

    <!-- Demo styles -->
    <style>

        html,
        body,
        .container {
            height: 100%;
        }

        body {
            font-family: 'Open Sans', sans-serif;
            font-size: 14px;
            margin:0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #fff;
            flex-direction: column;
        }

        .timeline {
            width: 100%;
            background-color: #fff;
            box-shadow: 0 5px 25px 5px rgba(0, 0, 0, 0.2);
        }
        .timeline .swiper-container {
            height: 600px;
            width: 100%;
            position: relative;
        }
        .timeline .swiper-wrapper {
            transition: 2s cubic-bezier(0.68, -0.4, 0.27, 1.34) 0.2s;
        }
        .timeline .swiper-slide {
            position: relative;
            color: #fff;
            overflow: hidden;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
        }
        .timeline .swiper-slide::after {
            content: "";
            position: absolute;
            z-index: 1;
            right: -115%;
            bottom: -10%;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            box-shadow: -230px 0 150px 60vw rgba(0, 0, 0, 0.7);
            border-radius: 100%;
        }
        .timeline .swiper-slide-content {
            position: absolute;
            text-align: center;
            width: 80%;
            max-width: 310px;
            right: 50%;
            top: 13%;
            -webkit-transform: translate(50%, 0);
            transform: translate(50%, 0);
            font-size: 12px;
            z-index: 2;
        }
        .timeline .swiper-slide .timeline-year {
            display: block;
            font-style: italic;
            font-size: 42px;
            margin-bottom: 50px;
            -webkit-transform: translate3d(20px, 0, 0);
            transform: translate3d(20px, 0, 0);
            color: #d4a024;
            font-weight: 300;
            opacity: 0;
            transition: .2s ease .4s;
        }
        .timeline .swiper-slide .timeline-title {
            font-weight: 800;
            font-size: 34px;
            margin: 0 0 30px;
            opacity: 0;
            -webkit-transform: translate3d(20px, 0, 0);
            transform: translate3d(20px, 0, 0);
            transition: .2s ease .5s;
        }
        .timeline .swiper-slide .timeline-text {
            line-height: 1.5;
            opacity: 0;
            -webkit-transform: translate3d(20px, 0, 0);
            transform: translate3d(20px, 0, 0);
            transition: .2s ease .6s;
        }
        .timeline .swiper-slide-active .timeline-year {
            opacity: 1;
            -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
            transition: .4s ease 1.6s;
        }
        .timeline .swiper-slide-active .timeline-title {
            opacity: 1;
            -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
            transition: .4s ease 1.7s;
        }
        .timeline .swiper-slide-active .timeline-text {
            opacity: 1;
            -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
            transition: .4s ease 1.8s;
        }
        .timeline .swiper-pagination {
            right: 15% !important;
            height: 100%;
            display: none;
            flex-direction: column;
            justify-content: center;
            font-style: italic;
            font-weight: 300;
            font-size: 18px;
            z-index: 1;
        }
        .timeline .swiper-pagination::before {
            content: "";
            position: absolute;
            left: -30px;
            top: 0;
            height: 100%;
            width: 1px;
            background-color: rgba(255, 255, 255, 0.2);
        }
        .timeline .swiper-pagination-bullet {
            width: auto;
            height: auto;
            text-align: center;
            opacity: 1;
            background: transparent;
            color: #d4a024;
            margin: 15px 0 !important;
            position: relative;
        }
        .timeline .swiper-pagination-bullet::before {
            content: "";
            position: absolute;
            top: 8px;
            left: -32.5px;
            width: 6px;
            height: 6px;
            border-radius: 100%;
            background-color: #d4a024;
            -webkit-transform: scale(0);
            transform: scale(0);
            transition: .2s;
        }
        .timeline .swiper-pagination-bullet-active {
            color: #d4a024;
        }
        .timeline .swiper-pagination-bullet-active::before {
            -webkit-transform: scale(1);
            transform: scale(1);
        }
        .timeline .swiper-button-next,
        .timeline .swiper-button-prev {
            background-size: 20px 20px;
            top: 15%;
            width: 20px;
            height: 20px;
            margin-top: 0;
            z-index: 2;
            transition: .2s;
        }
        .timeline .swiper-button-prev {
            left: 8%;
            background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%23d4a024'%2F%3E%3C%2Fsvg%3E");
        }
        .timeline .swiper-button-prev:hover {
            -webkit-transform: translateX(-3px);
            transform: translateX(-3px);
        }
        .timeline .swiper-button-next {
            right: 8%;
            background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%23d4a024'%2F%3E%3C%2Fsvg%3E");
        }
        .timeline .swiper-button-next:hover {
            -webkit-transform: translateX(3px);
            transform: translateX(3px);
        }
        @media screen and (min-width: 768px) {
            .timeline .swiper-slide::after {
                right: -30%;
                bottom: -8%;
                width: 240px;
                height: 50%;
                box-shadow: -230px 0 150px 50vw rgba(0, 0, 0, 0.7);
            }
            .timeline .swiper-slide-content {
                right: 30%;
                top: 50%;
                -webkit-transform: translateY(-50%);
                transform: translateY(-50%);
                width: 310px;
                font-size: 11px;
                text-align: right;
            }
            .timeline .swiper-slide .timeline-year {
                margin-bottom: 0;
                font-size: 32px;
            }
            .timeline .swiper-slide .timeline-title {
                font-size: 46px;
                margin: 0;
            }
            .timeline .swiper-pagination {
                display: flex;
            }
            .timeline .swiper-button-prev {
                top: 15%;
                left: auto;
                right: 15%;
                -webkit-transform: rotate(90deg) translate(0, 10px);
                transform: rotate(90deg) translate(0, 10px);
            }
            .timeline .swiper-button-prev:hover {
                -webkit-transform: rotate(90deg) translate(-3px, 10px);
                transform: rotate(90deg) translate(-3px, 10px);
            }
            .timeline .swiper-button-next {
                top: auto;
                bottom: 15%;
                right: 15%;
                -webkit-transform: rotate(90deg) translate(0, 10px);
                transform: rotate(90deg) translate(0, 10px);
            }
            .timeline .swiper-button-next:hover {
                -webkit-transform: rotate(90deg) translate(3px, 10px);
                transform: rotate(90deg) translate(3px, 10px);
            }
        }
        @media screen and (min-width: 1024px) {
            .timeline .swiper-slide::after {
                right: -20%;
                bottom: -12%;
                width: 240px;
                height: 50%;
                box-shadow: -230px 0 150px 39vw rgba(0, 0, 0, 0.7);
            }
            .timeline .swiper-slide-content {
                right: 25%;
            }
        }
        #ret-img{
            width: 45px;
            height:45px;

        }

    </style>
</head>
<body>
<!-- Swiper -->



<div class="container">


    <div class="timeline">
        <%--????????????--%>
        <a href="${pageContext.request.contextPath}/AdminController/login" class="ret-btn"><img id="ret-img" src="${pageContext.request.contextPath}/images/ret.jpg">??????</a>

        <div class="swiper-container">

            <div class="swiper-wrapper">
                <div class="swiper-slide" style="background-image: url(${pageContext.request.contextPath}/images/01.jpg);" data-year="one">
                    <div class="swiper-slide-content"><span class="timeline-year">one</span>
                        <h4 class="timeline-title">??????:??????????????????????????????????????????</h4>
                        <p class="timeline-text">4???15?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????23000??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????.</p>
                    </div>
                </div>
                <div class="swiper-slide" style="background-image: url(${pageContext.request.contextPath}/images/02.jpg);" data-year="two">
                    <div class="swiper-slide-content"><span class="timeline-year">two</span>
                        <h4 class="timeline-title">???????????????????????????????????????3?????????2019???????????????????????????????????????</h4>
                        <p class="timeline-text">3???31?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????3????????????2019???11?????????????????????????????????????????????????????????</p>
                    </div>
                </div>
                <div class="swiper-slide" style="background-image: url(${pageContext.request.contextPath}/images/03.jpg);" data-year="three">
                    <div class="swiper-slide-content"><span class="timeline-year">three</span>
                        <h4 class="timeline-title">???????????????????????????????????????????????? </h4>
                        <p class="timeline-text">????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
                            ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>
                    </div>
                </div>
                <div class="swiper-slide" style="background-image: url(${pageContext.request.contextPath}/images/04.jpg);" data-year="four">
                    <div class="swiper-slide-content"><span class="timeline-year">four</span>
                        <h4 class="timeline-title">??????26?????? ?????????????????????????????????1500???</h4>
                        <p class="timeline-text">4???18????????????????????????????????????????????????????????????????????????
                            ??????????????????18???????????????????????????????????????????????????????????????261500??????????????????????????????????????????14788109????????????????????????1501??????????????????177150??????</p>
                    </div>
                </div>
                <div class="swiper-slide" style="background-image: url(${pageContext.request.contextPath}/images/05.jpg);" data-year="five">
                    <div class="swiper-slide-content"><span class="timeline-year">five</span>
                        <h4 class="timeline-title">92???????????????????????????????????????????????????????????????</h4>
                        <p class="timeline-text">??????92?????????????????????????????????????????????/BioNTech???????????????????????????????????????4???16???????????????????????????????????????????????????
                            ?????? ??????????????????????????????????????????????????????????????????????????????????????????????????????92????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>
                    </div>
                </div>
                <div class="swiper-slide" style="background-image: url(${pageContext.request.contextPath}/images/06.jpg);" data-year="six">
                    <div class="swiper-slide-content"><span class="timeline-year">six</span>
                        <h4 class="timeline-title">????????????????????????????????? ????????????????????????</h4>
                        <p class="timeline-text">???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
                            ????????????????????????18???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>
                    </div>
                </div>
            </div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
</div>

<!-- Swiper JS -->
<script src="${pageContext.request.contextPath}/js/swiper.min.js"></script>

<!-- Initialize Swiper -->
<script>
    var timelineSwiper = new Swiper ('.timeline .swiper-container', {
        direction: 'vertical',
        loop: false,
        speed: 1600,
        mousewheelControl : true,
        pagination: '.swiper-pagination',
        paginationBulletRender: function (swiper, index, className) {
            var year = document.querySelectorAll('.swiper-slide')[index].getAttribute('data-year');
            return '<span class="' + className + '">' + year + '</span>';
        },
        paginationClickable: true,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        breakpoints: {
            768: {
                direction: 'horizontal',
            }
        }
    });
</script>
</body>
</html>