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
    <form action="/order/save">
        장바구니번호
        <input type="text" id="cart_id" value="${cart.s_id}">
        <input type="text" name="m_id" value="${cart.m_id}">
        <input type="text" name="i_id" value="${cart.i_id}">
        <input type="text" name="itemQTY" value="${cart.itemQTY}">
        <a href="/item/detail?i_id=${cart.i_id}">상품이름 ${cart.itemName}</a>
        상품가격 ${cart.itemPrice}
        판매상태 ${cart.itemStatus}
        <input type="text" name="totalPrice" value="${cart.totalPrice}">
        <input type="submit" value="주문하기">
        <a href="/cart/delete?cart_id=${cart.s_id}&m_id=${sessionScope.m_id}">삭제</a>
    </form>
</c:forEach>
</body>
</html>
