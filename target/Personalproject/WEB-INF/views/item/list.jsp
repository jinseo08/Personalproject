<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-09
  Time: 오후 1:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>BoardList</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<a href="/item/save">글작성</a>
<c:forEach var="item" items="${itemList}">
    <input type="hidden" value="${item.i_id}">
    상품이름 <a href="/item/detail?i_id=${item.i_id}">${item.itemName}</a><br>
    상품가격 ${item.itemPrice}<br>
    상품카테고리 ${item.itemCategory}<br>
    상품간단설명 ${item.itemTitle}<br>
    상품상세설명 <img src="${pageContext.request.contextPath}/upload/${item.itemThumbnailName}" alt="이미지가없습니다" height="100" width="100">
    <h2>${item.itemStatus}</h2>
</c:forEach>
</body>
</html>
