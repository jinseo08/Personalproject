<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-16
  Time: 오후 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyPage</title>
    <style>
        body{background:#fff9bd}
        #wrap{width:800px; margin:0 auto; background:#fff; border-radius:100px; padding:50px 20px; box-sizing:border-box;}
        #wrap div + div{padding-top:10px;}
        #wrap .top_box{text-align:center;}
        #wrap .top_box img{max-width:40%;}
        #wrap .bot_box{padding-left:120px;}
        #wrap p{display:inline-block; margin-right:10px; vertical-align:middle;width:30%; font-weight:bold; font-size:17px;}
        #wrap input{height:50px; border-radius:25px; border:0; padding:10px 20px; box-sizing:border-box; font-size:18px; letter-spacing:-0.025em; border:1px solid #aaa; width:50%; display:inline-block; vertical-align:middle;}
        #wrap input.w10{width:16%;}
        #wrap input[type="radio"]{width:3%;}
        #wrap input.center{margin-left:120px; margin-top:30px;}
        #wrap select{height:50px; border-radius:25px; border:0; padding:10px 20px; box-sizing:border-box; font-size:18px; letter-spacing:-0.025em; border:1px solid #aaa; width:16%; display:inline-block; vertical-align:middle;}
    </style>
</head>
<body>
<div id="wrap">
    <div class="top_box">
        <h1>${dog.dogName}</h1>
    </div>
    <input type="hidden" name="d_id" value="${dog.d_id}">
    <p>반려견 이름</p>
    <input type="text" name="dogName" value="${dog.dogName}">
    <p>반려경 생년월일</p>
    <input type="text" name="dogDateBirth" value="${dog.dogDateBirth}">
    <p>반려견 입양날</p>
    <input type="text" name="dogDayWeMet" value="${dog.dogDayWeMet}">
    <p>반려견 성별</p>
    <input type="text" name="dogGender" value="${dog.dogGender}">
    <p>중성화 유무</p>
    <input type="text" name="dogGenderCk" value="${dog.dogGenderCk}">
    <p>프로필 사진</p>
    <img src="${pageContext.request.contextPath}/upload/${dog.dogProfileName}" alt="이미지가없습니다" height="350" width="350">
    <p>강아지 소개말</p>
    <input type="text" name="dogContents" value="${dog.dogContents}">
</div>
</body>
</html>
