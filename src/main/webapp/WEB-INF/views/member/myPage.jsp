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
마이페이지
${member}
<a href="/dog/findAll?m_id=${member.m_id}">반려견 조회</a>
</body>
</html>
