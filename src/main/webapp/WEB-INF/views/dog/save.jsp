<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-05
  Time: 오후 3:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DogSave</title>
</head>
<body>
반려견등록
<form action="/dog/save" method="post" enctype="multipart/form-data">
    <p>보호자 아이디</p>
    <input type="text" name="m_id" value="${m_id}"><br>
    <p>반려견 이름</p>
    <input type="text" name="dogName" placeholder="이름"><br>
    <p>반려견 생년월일</p>
    <input type="text" name="dogDateBirth" placeholder="생년월일"><br>
    <p>반려견 입양날</p>
    <input type="text" name="dogDayWeMet" placeholder="입양날">
    <p>반려견 성별</p>
    <input type="text" name="dogGender" placeholder="성별"><br>
    <p>반려견 프로필사진</p>
    <input type="file" name="dogProfile"><br>
    <p>반려견 소개</p>
    <input type="text" name="dogContents" placeholder="강아지 소개글"><br>
    <input type="submit" value="반려견 등록">
</form>
</body>
</html>
