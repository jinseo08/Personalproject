<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-14
  Time: 오후 5:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order</title>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
${item}
${member}
<form action="/order/save" method="post" name="orderSubmit">
    <input type="text" name="m_id" value="${member.m_id}">
    <input type="text" name="i_id" value="${item.i_id}">
    수량 <input type="text" name="itemQTY" id="itemQTY" value="${itemQTY}">
    상품 가격 <input type="text" name="price" id="itemPrice" value="${item.itemPrice}">
    총 금액 <input type="text" name="totalPrice" value="${totalPrice}">
    <input type="button" value="결제하기123" onclick="requestPay()">
</form>
</body>
<script>
    function requestPay() {
        var IMP = window.IMP;
        IMP.init('imp55962126');
        IMP.request_pay({
            pg: "kakaopay",
            pay_method: 'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '${item.itemName}',
            amount: '${totalPrice}',
            buyer_email: '구매자 이메일',
            buyer_name: '${member.memberName}',
            buyer_tel: '구매자 번호',
            buyer_addr: '구매자 주소',
            buyer_postcode: '구매자 주소',
            m_redirect_url: 'redirect url'
        }, function (rsp) {
            if (rsp.success) {
                alert("주문이 완료 되었습니다")
                location.href = '/order/findAll?m_id=${sessionScope.m_id}';
                orderSubmit.submit();
            } else {
                var msg = '결제에 실패하였습니다.';
                rsp.error_msg;
            }
        });
    }

</script>
</html>
