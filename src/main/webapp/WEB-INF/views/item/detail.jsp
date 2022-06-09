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
${itemDetail}
<a href="#" onclick="deleteCk()">글삭제</a>
</body>
<script>
    function deleteCk(){
        result = confirm("삭제하시겠습니까?")
        if(result == true){
            location.href = "/item/delete?i_id=${itemDetail.i_id}"
        }
    }
</script>
</html>
