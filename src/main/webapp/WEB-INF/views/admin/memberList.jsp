<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-03
  Time: 오후 1:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MemberList</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
회원전체목록

<c:forEach var="member" items="${memberList}">
    회원번호 ${member.m_id} <br>
    회원아이디 <a href="/member/detailAdmin?m_id=${member.m_id}">${member.memberId}</a><br>
    회원이름 ${member.memberName} <br>
    회원 삭제 <a href="/member/delete?m_id=${member.m_id}">삭제</a><br>
</c:forEach>
</body>
</html>
