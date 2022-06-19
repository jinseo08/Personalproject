<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-03
  Time: 오전 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
    <link rel="stylesheet" href="../../resources/swiper.min.css" type="text/css" media="all" />
    <script type="text/javascript" src="../../resources/swiper.min.js"></script>
    <style>
        ul{margin:0; padding:0; }
        .main_visual{position:relative; width:100%; height:615px;}
        .main_visual ul{width:100%; height:100%;}
        .main_visual ul li{list-style:none; width:100% !important;}
        .main_visual .txt_box{margin-top:220px;margin-left: 50px;}
        .main_visual .txt_box p{font-size:48px; letter-spacing:-0.025em; color:#222; font-weight:bold;}
    </style>
</head>
<body>
<jsp:include page="./layout/header.jsp" flush="false"></jsp:include>
<div class="main_visual">
    <ul class="swiper-wrapper">
        <li class="swiper-slide" style="background:url('../../resources/img/main1.jpg') no-repeat left / cover;">
            <div class="txt_box">
            </div>
        </li>
        <li class="swiper-slide" style="background:url('../../resources/img/main2.jpg') no-repeat center / cover;">
            <div class="txt_box">
                <p>귀여운 댕댕이 사진을 <br> 맘껏 <br>  자랑하개!</p>
            </div>
        </li>
        <li class="swiper-slide" style="background:url('../../resources/img/main3.jpg') no-repeat center / cover;">
            <div class="txt_box">
                <p>귀여운 댕댕이 용품을 <br> 맘껏 <br> 쇼핑하개!</p>
            </div>
        </li>
    </ul>
</div>
</body>
<script>
    var main_visual_sldie = new Swiper('.main_visual', {
        loop:true,
         autoplay: {   // 슬라이드 자동
             delay: 5000,  // 멈춰있는시간
             disableOnInteraction: false, // 마우스로 드래그 해도 계속해서 슬라이드 진행
         },
    });
</script>
</body>

</html>
