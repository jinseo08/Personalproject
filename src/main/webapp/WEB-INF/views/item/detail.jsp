<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-09
  Time: 오후 5:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ItemDetail</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
${itemDetail}<br>
<a href="#" onclick="deleteCk()">상품삭제</a>
<form method="get" name="cartSubmit">
<input type="hidden" name="i_id" value="${itemDetail.i_id}">
<input type="hidden" name="m_id" value="${sessionScope.m_id}">
<p>수량</p>
<select name="itemQTY">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
</select>개
<br>
<a href="#" onclick="cartSave()">장바구니 담기</a>
<a href="#" onclick="orderSave()">결제하기</a>
</form>
</body>
<script>
    function deleteCk(){
        result = confirm("삭제하시겠습니까?")
        if(result == true){
            location.href = "/item/delete?i_id=${itemDetail.i_id}"
        }
    }

    function cartSave(){
        cartResult = confirm("장바구니에 담으시겠습니까?");
        if(cartResult == true){
            cartSubmit.action ="/cart/save";
            cartSubmit.submit();
            }
    }

    function orderSave(){
        cartResult = confirm("결제 하시겠습니까?");
        if(cartResult == true){
            cartSubmit.action ="/order/save";
            cartSubmit.submit();
        }
    }

</script>
</html>
