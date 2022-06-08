<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-08
  Time: 오후 1:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>BoardSave</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<form action="/board/save" method="post" enctype="multipart/form-data">
<p>작성자</p>
<input type="hidden" name="m_id" value="${sessionScope.m_id}">
<input type="text" name="memberId" value="${sessionScope.memberId}" readonly>
<p>반려견 선택</p>
<select name="dogName">
    <option value="선택">반려견 선택</option>
    <c:forEach var="dog" items="${dogList}">
        <option value="${dog.dogName}">${dog.dogName}</option>
    </c:forEach>
</select>
<p>글제목</p>
<input type="text" name="boardTitle">
<p>글내용</p>
<input type="text" name="boardContents">
<p>자랑할사진</p>
<input type="file" name="boardFile">
<input type="submit" value="작성">
</form>
</body>
<script>
</script>
</html>
