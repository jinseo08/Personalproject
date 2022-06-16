<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-06
  Time: 오전 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>DogFindAll</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<c:forEach var="dog" items="${dogList}">
    <input type="hidden" id="d_id${dog.d_id}" value="${dog.d_id}" name="d_id" value="${dog.d_id}">
    <input type="button" value="${dog.dogName}" onclick="detail(${dog.d_id})">
    반려견 이름 <a href="/dog/detail?d_id=${dog.d_id}">${dog.dogName}</a><br>
    <a href="/dog/delete?d_id=${dog.d_id}&m_id=${sessionScope.m_id}" >삭제</a><br>
</c:forEach>
<div id="dogDetail">

</div>
</body>
<script>
    function detail(id){
        let d_id = document.getElementById("d_id"+id).value;
        let m_id = '${sessionScope.m_id}';
        $.ajax({
            type : "get",
            url : "/dog/detail2",
            data: {
                "m_id" : m_id,
                "d_id" : d_id
            },
            dataType : "html",
            success : function (result){
                $("#dogDetail").html(result);
            },
            error : function (){
                alert("ajax 오류")
            }
        })
    }
</script>
</html>
