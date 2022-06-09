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
<a href="/item/delete?i_id=${itemDetail.i_id}">글삭제</a>
</body>
</html>
