<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-09
  Time: 오전 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ItemSave</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<form action="/item/save" method="post" enctype="multipart/form-data">
    <p>상품이름</p>
    <input type="text" name="itemName" placeholder="상품이름">
    <p>상품가격</p>
    <input type="text" name="itemPrice" placeholder="상품가격">
    <p>상품카테고리</p>
    <select name="itemCategory" id="category" onchange="category1()">
        <option value="카테고리">카테고리</option>
        <option value="사료">사료</option>
        <option value="간식">간식</option>
        <option value="장난감">장난감</option>
    </select>
    <div id="categoryResult"></div>
    <p>상품간단소개</p>
    <input type="text" name="itemTitle" placeholder="상품간단소개">
    <p>상품상세내용</p>
    <input type="text" name="itemContents" placeholder="상품상세내용">
    <p>상품썸네일사진</p>
    <input type="file" name="itemThumbnail">
    <p>판매상태</p>
    <select name="itemStatus" id="status" onchange="status1()">
        <option value="상품상태">상품상태</option>
        <option value="판매중">판매중</option>
        <option value="품절">품절</option>
        <option value="판매종료">판매종료</option>
    </select>
    <div id="statusResult"></div>
    <input type="submit" value="상품등록">
</form>
</body>
<script>
function category1(){
    let category = document.getElementById("category").value;
    let result = document.getElementById("categoryResult");
    if(category == "카테고리"){
        result.innerHTML = "카테고리를 선택해주세요";
        result.style.color = "red";
    }else {
        result.innerHTML="";
    }
}
function status1(){
    let status = document.getElementById("status").value;
    let result = document.getElementById("statusResult");
    if(status == "상품상태"){
        result.innerHTML = "상품선택을 해주세요";
        result.style.color = "red";
    }else {
        result.innerHTML="";
    }
}


</script>
</html>
