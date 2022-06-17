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

<form method="get" name="cartSubmit">
    <input type="hidden" name="i_id" value="${itemDetail.i_id}">
    <input type="hidden" name="m_id" value="${sessionScope.m_id}">
    <input type="hidden" name="itemPrice" id="itemPrice" value="${itemDetail.itemPrice}">
    <input type="hidden" name="totalPrice" id="totalPrice">

    <p>${itemDetail.itemName}</p>
    <p>${itemDetail.itemPrice}</p>
    <p>${itemDetail.itemCategory}</p>
    <p>${itemDetail.itemTitle}</p>
    <p>${itemDetail.itemContents}</p>

    <p><img src="${pageContext.request.contextPath}/upload/${itemDetail.itemThumbnailName}" alt="이미지가없습니다"></p>
    <p>${itemDetail.itemStatus}</p>
    <p><img src="${pageContext.request.contextPath}/upload/${itemDetail.itemFileName}" alt="이미지가없습니다"></p>

    <p>수량</p>
    <select name="itemQTY" id="itemQTY" onchange="priceCk()">
        <option value="수량선택">수량선택</option>
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
    <a href="#" onclick="cartSave()">장바구니 담기</a>
    <a href="#" onclick="orderSave()">주문하기</a>
</form>
</body>
<script>
    <%--function deleteCk(){--%>
    <%--    result = confirm("삭제하시겠습니까?")--%>
    <%--    if(result == true){--%>
    <%--        location.href = "/item/delete?i_id=${itemDetail.i_id}"--%>
    <%--    }--%>
    <%--}--%>

    function cartSave() {
        cartResult = confirm("장바구니에 담으시겠습니까?");
        let itemQTY1 = document.getElementById("itemQTY").value;
        if (cartResult == true) {
            if (itemQTY1 == "수량선택") {
                alert("수량을 선택해주세요")
            } else {
                cartSubmit.action = "/cart/save";
                cartSubmit.submit();
            }
        }
    }

    function orderSave() {
        cartResult = confirm("주문 하시겠습니까?");
        if (cartResult == true) {
            let itemQTY1 = document.getElementById("itemQTY").value;
            let totalPrice = document.getElementById("totalPrice").value;
            if (itemQTY1 == "수량선택") {
                alert("수량을 선택해주세요")
            } else {
                console.log(itemQTY1)
                cartSubmit.action = "/order/save?i_id=${itemDetail.i_id}&m_id=${sessionScope.m_id}&itemQTY=" + itemQTY1 + "&totalPrice=" + totalPrice;
                cartSubmit.submit();
            }
        }
    }

    function priceCk() {
        let price = document.getElementById("itemPrice").value;
        let itemQTY = document.getElementById("itemQTY").value;
        document.getElementById("totalPrice").value = price * itemQTY;
    }

</script>
</html>
