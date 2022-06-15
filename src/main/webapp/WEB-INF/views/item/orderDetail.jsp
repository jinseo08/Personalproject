<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-15
  Time: 오후 6:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OrderDetail</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
주문번호 ${orderDetail.o_id}
상품번호 ${orderDetail.i_id}
상품이름 ${orderDetail.itemName}
상품수량${orderDetail.itemQTY}
상품가격${orderDetail.itemPrice}
총금액 ${orderDetail.totalPrice}
주문시간 ${orderDetail.orderCreatedDate}<br>
</body>
</html>
