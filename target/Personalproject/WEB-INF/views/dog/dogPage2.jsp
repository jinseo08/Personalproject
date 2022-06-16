<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-16
  Time: 오후 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<input type="hidden" name="d_id" value="${dog.d_id}">
<p>반려견 이름</p>
<input type="text" name="dogName" value="${dog.dogName}">
<p>반려경 생년월일</p>
<input type="text" name="dogDateBirth" value="${dog.dogDateBirth}">
<p>반려견 입양날</p>
<input type="text" name="dogDayWeMet" value="${dog.dogDayWeMet}">
<p>반려견 성별</p>
<input type="text" name="dogGender" value="${dog.dogGender}">
<p>중성화 유무</p>
<input type="text" name="dogGenderCk" value="${dog.dogGenderCk}">
<p>프로필 사진</p>
<img src="${pageContext.request.contextPath}/upload/${dog.dogProfileName}" alt="이미지가없습니다" height="350" width="350">
<p>강아지 소개말</p>
<input type="text" name="dogContents" value="${dog.dogContents}">
