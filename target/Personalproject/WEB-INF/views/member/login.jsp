<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-03
  Time: 오전 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        h1{padding-bottom:20px;}
        #wrap{font-size:0; letter-spacing:-4px; width:1000px; margin:0 auto; padding-top:100px;}
        #wrap .left_box{display:inline-block; vertical-align:middle; width:519px; margin-right:20px; height:700px; background:#fff9bd; border-radius:120px;}
        #wrap .left_box img{width:100%; padding-top:100px;}
        #wrap .right_box{display:inline-block; vertical-align:middle; width:461px; text-align:center;}
        #wrap .right_box h1{font-size:32px; letter-spacing:-0.025em; color:#222; }
        #wrap .right_box input{width:80%; height:50px; border-radius:25px; box-shadow:5px 5px 10px rgba(0,0,0,0.2); border:0; padding:10px 20px; box-sizing:border-box; font-size:18px; letter-spacing:-0.025em;}
        #wrap .right_box input + input{margin-top:20px;}
        #wrap .right_box input.login{background:#fff9bd; margin-top:30px;}
        #wrap .right_box .bot_box{margin-top:100px;}
        #wrap .right_box .center a{display:inline-block; width:80%; height:50px; border-radius:25px; text-align:center; font-size:18px; letter-spacing:-0.025em; background:#fff9bd; line-height:50px; box-shadow:5px 5px 10px rgba(0,0,0,0.2);}
    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div id="wrap">
    <div class="left_box">
        <img src="../../../resources/img/loginPage.jpg" alt="">
    </div>
    <div class="right_box">
        <div class="top_box">
            <h1>로그인</h1>
            <form action="/member/login" method="post">
                <input type="text" name="memberId" placeholder="아이디">
                <input type="password" name="memberPassword" placeholder="비밀번호">
                <input type="submit" value="로그인" class="login">
            </form>
        </div>
        <div class="bot_box">
            <h1 class="bmj">계정이 없으신가요?</h1>
            <div class="center">
                <a href="/member/save" class="login">회원가입</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
