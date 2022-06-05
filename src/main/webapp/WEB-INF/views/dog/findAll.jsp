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
    ${dog.m_id}
    ${dog.d_id}
    ${dog.dogName}
</c:forEach>
</body>
</html>
