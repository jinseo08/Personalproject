<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-15
  Time: 오후 4:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>OrderList</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<c:forEach var="order" items="${orderList}">
    주문번호 <a href="/order/detail?o_id=${order.o_id}"> ${order.o_id} </a>
    회원번호 ${order.m_id}
    상품번호 ${order.i_id}
    총금액 ${order.totalPrice}
    주문시간 ${order.orderCreatedDate}<br>

</c:forEach>
</body>
</html>
