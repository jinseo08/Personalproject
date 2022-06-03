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
로그인페이지
<form action="/member/login" method="post">
    <p>아이디</p>
    <input type="text" name="memberId" placeholder="아이디">
    <p>비밀번호</p>
    <input type="password" name="memberPassword" placeholder="비밀번호">
    <input type="submit" value="로그인">
</form>
</body>
</html>
