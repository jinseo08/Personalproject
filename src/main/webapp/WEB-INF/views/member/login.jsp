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
</head>
<body>
<div>
    <h1>로그인</h1>
<form action="/member/login" method="post">
    <input type="text" name="memberId" placeholder="아이디">
    <input type="password" name="memberPassword" placeholder="비밀번호">
    <input type="submit" value="로그인">
</form>
</div>
<div>
    <h1 class="bmj">계정이 없으신가요?</h1>
    <div class="center">
        <a href="/member/save" class="login">회원가입</a>
    </div>
</div>
</body>
</html>
