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
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<c:forEach var="dog" items="${dogList}">
    회원번호 ${dog.m_id} <br>
    반려견 번호 ${dog.d_id} <br>
    반려견 이름 <a href="/dog/detail?d_id=${dog.d_id}">${dog.dogName}</a><br>
    반려견 삭제 <a href="#" onclick="deleteCk()">삭제</a><br>
</c:forEach>
</body>
<script>
    function deleteCk(){
        result = confirm("삭제하시겠습니까?")
        if(result == true){
            location.href = "/dog/delete?d_id=${dog.d_id}"
        }
    }
</script>
</html>
