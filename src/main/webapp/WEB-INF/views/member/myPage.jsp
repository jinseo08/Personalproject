<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-06
  Time: 오전 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyPage</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<input type="hidden" name="m_id" value="${sessionScope.m_id}">
<p>아이디</p>
<input type="text" name="memberId" value="${member.memberId}">
<p>비밀번호</p>
<input type="password" name="memberPassword" value="${member.memberPassword}">
<p>이름</p>
<input type="text" name="memberName" value="${member.memberName}">
<p>이메일</p>
<input type="text" name="memberEmail" value="${member.memberEmail}">
<p>연락처</p>
<input type="text" name="memberMobile" value="${member.memberMobile}">
<p>주소</p>
<input type="text" name="memberPostCode" value="${member.memberPostCode}">
<input type="text" name="memberAddress" value="${member.memberAddress}">
<input type="text" name="memberDetailAddress" value="${member.memberDetailAddress}">
<input type="text" name="memberExtraAddress" value="${member.memberExtraAddress}">
</body>
</html>
