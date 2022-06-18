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
    <style>
        p{margin:0}
        form{width:1000px; margin:0 auto;}
        form + form{padding-top:30px;}
        .box{display:inline-block; vertical-align:middle; width:16%; text-align:center;}
        .box span{display:block; font-size:16px; color:#aaa; margin-bottom:10px;}
        .box img{width:120px; height:120px;}
        .box a{display:block;}
        .box a + a{margin-top:10px;}
        .box.tit p{font-size:24px; color:#222; font-weight:bold;}
    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>

<c:forEach var="cart" items="${cartList}">
    <form action="/order/save" name="cartForm">
        <input type="hidden" id="cart_id" value="${cart.s_id}">
        <input type="hidden" name="m_id" value="${cart.m_id}">
        <input type="hidden" name="i_id" value="${cart.i_id}">
        <input type="hidden" name="itemQTY" value="${cart.itemQTY}">
        <input type="hidden" name="totalPrice" value="${cart.totalPrice}">
        <div class="box">
            <img src="${pageContext.request.contextPath}/upload/${cart.itemThumbnailName}" alt="이미지가없습니다">
        </div>
        <div class="box tit">
            <span>상품명</span>
            <p><a href="/item/detail?i_id=${cart.i_id}">${cart.itemName}</a></p>
        </div>
        <div class="box price">
            <span>금액</span>
            <p>${cart.itemPrice}원</p>
        </div>
        <div class="box qty">
            <span>수량</span>
            <p>${cart.itemQTY}개</p>
        </div>
        <div class="box to_price">
            <span>총 금액</span>
            <p>${cart.totalPrice}원</p>
        </div>
        <div class="box">
            <a href="#" onclick="cartSubmit()">주문하기</a>
            <a href="/cart/delete?cart_id=${cart.s_id}&m_id=${sessionScope.m_id}">삭제</a>
        </div>
<%--        판매상태 ${cart.itemStatus}--%>
    </form>
</c:forEach>
</body>
<script>
    function cartSubmit(){
        cartForm.submit();
    }
</script>
</html>
