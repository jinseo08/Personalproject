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
    <style>
        .prod_list{font-size:0; letter-spacing:-4px;}
        .prod_list ul{width:1000px; margin:0 auto; padding:0;}
        .prod_list ul li{display:inline-block; vertical-align:top; width:calc(33.3333% - 40px); margin-right:60px; text-align:center;}
        .prod_list ul li:nth-of-type(3n){margin-right:0;}
        .prod_list ul li:nth-of-type(n+4){margin-top:40px;}
        .prod_list ul li a{display:block; position:relative;}
        .prod_list ul li .img_box{position:relative; padding:38% 0;}
        /*.prod_list ul li .img_box img{position:absolute; left:0; right:0; top:0; bottom:0; max-width:100%; max-height:100%; margin:auto; }*/
        .prod_list ul li .img_box img{position:absolute; left:0; top:0; width:100%; height:100%;}
        .prod_list ul li .txt_box{margin-top:20px; padding:20px; box-sizing:border-box;}
        .prod_list ul li .txt_box p{font-size:24px; letter-spacing:-0.025em; color:#222; font-weight:bold; padding-bottom:15px; margin:0}
        .prod_list ul li .txt_box span{font-size:18px; letter-spacing:-0.025em; color:#666; font-weight:400; display:block;  min-height:51px}
        .prod_list ul li .txt_box span.price{padding-top:10px; min-height:auto}
        .prod_list ul li .txt_box span.cate{position:absolute; right:20px; bottom:0; min-height:auto}
    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<c:choose>
    <c:when test="${sessionScope.memberId eq 'admin'}">
        <a href="/item/save">상품등록</a><br><br>
    </c:when>
</c:choose>
<div class="prod_list">
    <ul>
        <c:forEach var="item" items="${itemList}">
        <li>
            <a href="/item/detail?i_id=${item.i_id}">
                <div class="img_box">
                    <img src="${pageContext.request.contextPath}/upload/${item.itemThumbnailName}" alt="이미지가없습니다">
                </div>
                <div class="txt_box">
                    <p>${item.itemName}</p>
                    <span>${item.itemTitle}</span>
                    <span class="price">${item.itemPrice}</span>
                    <span class="cate">${item.itemStatus}</span>
                </div>
            </a>
        </li>
        </c:forEach>
    </ul>
<%--<c:forEach var="item" items="${itemList}">--%>
<%--     <a href="/item/detail?i_id=${item.i_id}">${item.itemName}</a>--%>
<%--     ${item.itemPrice}--%>
<%--&lt;%&ndash;    상품카테고리 ${item.itemCategory}<br>&ndash;%&gt;--%>
<%--     ${item.itemTitle}--%>
<%--    <h2>${item.itemStatus}</h2>--%>
<%--</c:forEach>--%>
</div>
</body>
</html>
