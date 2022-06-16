<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-03
  Time: 오후 1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>header</title><style>
    @font-face {
        font-family: 'GmarketSansBold';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansBold.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }
    body{font-family: 'GmarketSansBold';}
    a:link{color:inherit; text-decoration:none;}
    a:hover{color:inherit; text-decoration:none;}
    a:visited{color:inherit; text-decoration:none;}
    #header{position:relative; widtH:100%; height:120px; background: rgb(255, 249, 190); }
    #header .home{position:absolute; left:20px; top:50%; transform:translateY(-50%);}
    #header .home a{width:100px;}
    #header .home a img{width:100%;}
    #header .gnb{text-align:center;}
    #header .gnb ul li{margin-right:20px; display:inline-block}
    #header .gnb ul li a{font-size:24px; letter-spacing:-0.025em; color: #222222; line-height:120px; font-weight:bold; display:block;}
    #header .login_box{position:absolute; right:20px; top:50%; transform: translateY(-50%);}
    #header .login_box ul li{margin-right:20px; display:inline-block; text-align:center;}
    #header .login_box ul li:last-of-type{margin-right:0;}
    #header .login_box ul li img{display:block; margin:0 auto 5px; width:50px; height:50px; }
    #header .login_box ul li a{font-size:16px; letter-spacing:-0.025em; color: #222222; font-weight:400; display:block;}

</style>
</head>
<body>
<div id="header">
    <div class="home">
        <a href="/"><img src="../../../resources/img/logo7.jpg" alt="" height="90px"></a>
    </div>
    <div class="gnb">
        <ul>
            <li><a href="/board/paging">자랑하개</a></li>
            <li><a href="/item/findAll">쇼핑하개</a></li>
            <c:choose>
                <c:when test="${sessionScope.memberId eq 'admin'}">
                    <li><a href ="/member/findAll">회원목록</a></li>
                    <li><a href ="/member/logout">로그아웃</a></li>
                </c:when>
<%--                <c:when test="${!empty sessionScope.memberId}">--%>
<%--                    <li><a href="/member/detail?m_id=${memberLogin.m_id}"><img src="../../../resources/img/mypage2.jpg" alt="" height="70px" width="70px"></a></li>--%>
<%--                    <li><a href="/dog/findAll?m_id=${sessionScope.m_id}"><img src="../../../resources/img/mypet4.jpg" alt="" height="70px" width="70px"></a></li>--%>
<%--                    <li><a href="/dog/save?m_id=${memberLogin.m_id}"><img src="../../../resources/img/petSignup.jpg" alt="" height="70px" width="70px"></a></li>--%>
<%--                    <li><a href="/cart/findAll?m_id=${sessionScope.m_id}"><img src="../../../resources/img/cart.png" alt="" height="70px" width="70px"></a></li>--%>
<%--                    <li><a href="/order/findAll?m_id=${sessionScope.m_id}"><img src="../../../resources/img/order2.jpg" alt="" height="70px" width="70px"></a></li>--%>
<%--                    <li><a href="/member/logout"><img src="../../../resources/img/logout.jpg" alt="" height="70px" width="70px"></a></li>--%>
<%--                    ${sessionScope.memberId}님 안녕하세요!--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <li><a href="/member/save"><img src="../../../resources/img/signup.jpg" alt="" height="50px" width="50px"></a></li>--%>
<%--                    <li><a href="/member/login"><img src="../../../resources/img/login.jpg" alt="" height="50px" width="50px"></a></li>--%>
<%--                </c:otherwise>--%>
            </c:choose>
        </ul>
    </div>
    <div class="login_box">
        <ul>
<c:choose>
            <c:when test="${!empty sessionScope.memberId}">
                <li><a href="/member/detail?m_id=${memberLogin.m_id}"><img src="../../../resources/img/mypage2.jpg" alt=""></a>마이페이지</li>
                <li><a href="/dog/findAll?m_id=${sessionScope.m_id}"><img src="../../../resources/img/mypet4.jpg" alt=""></a>마이펫페이지</li>
                <li><a href="/dog/save?m_id=${memberLogin.m_id}"><img src="../../../resources/img/petSignup.jpg" alt="" ></a>반려견등록</li>
                <li><a href="/cart/findAll?m_id=${sessionScope.m_id}"><img src="../../../resources/img/cart.png" alt="" ></a>장바구니</li>
                <li><a href="/order/findAll?m_id=${sessionScope.m_id}"><img src="../../../resources/img/order2.jpg" alt=""></a>주문목록</li>
                <li><a href="/member/logout"><img src="../../../resources/img/logout.jpg" alt="" ></a>로그아웃</li>
            </c:when>
            <c:otherwise>
                <li><a href="/member/save"><img src="../../../resources/img/signup.jpg" alt="">회원가입</a></li>
                <li><a href="/member/login"><img src="../../../resources/img/login.jpg" alt="">로그인</a></li>
            </c:otherwise>
</c:choose>
        </ul>
    </div>
</div>
</body>
</html>
