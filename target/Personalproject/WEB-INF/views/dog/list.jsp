<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-06
  Time: 오전 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>DogFindAll</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<c:forEach var="dog" items="${dogList}">
    회원번호 ${dog.m_id} <br>
    반려견 번호
    <input type="text" id="dog_id" value="${dog.d_id}"><br>
    반려견 이름 <a href="/dog/detail?d_id=${dog.d_id}">${dog.dogName}</a><br>
    반려견 삭제 <a href="/dog/delete?d_id=${dog.d_id}&m_id=${sessionScope.m_id}" >삭제</a><br>
</c:forEach>
</body>
</html>
