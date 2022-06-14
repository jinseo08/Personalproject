<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-14
  Time: 오전 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Cart</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<c:forEach var="cart" items="${cartList}">
    장바구니번호 ${cart.s_id}
    <a href="/item/detail?i_id=${cart.i_id}">상품번호 ${cart.i_id}</a>
    회원번호 ${cart.m_id}
    상품수량 ${cart.itemQTY}
</c:forEach>
</body>
</html>
