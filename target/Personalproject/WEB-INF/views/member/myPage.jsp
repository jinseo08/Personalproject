<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-06
  Time: 오전 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyPage</title>
    <head>
        <title>MyPage</title>
        <style>
            #wrap{margin-top:30px;}
            #wrap h1{text-align:center; font-size:32px; letter-spacing:-0.025em; color:#222; font-weight:bold;}
            #wrap .left_box{width:520px; margin:0 auto; background:#fff9bd; padding:20px; box-sizing:border-box; font-size:12px; letter-spacing:-0.025em; border-radius:30px;}
            #wrap .left_box p{font-size:18px; letter-spacing:-0.025em; color:#666; font-weight:bold; margin:0; padding:10px 0 10px 15px; box-sizing:border-box; }
            #wrap .left_box a{font-size:18px; letter-spacing:-0.025em; color:#666; font-weight:500; margin:0; padding:10px 0; width:192px; display:inline-block; text-align:center; height:50px; line-height:50px; background:#222; padding:0; border-radius:25px; color:#fff;}
            #wrap .left_box input{height:50px; border-radius:25px; border:0; padding:10px 20px; box-sizing:border-box; font-size:18px; letter-spacing:-0.025em; border:1px solid #aaa; width:100%;}
            #wrap .left_box input.w50{width:49%; margin-top:10px;}
            #wrap .left_box input.w60{width:40%;}
            #wrap .left_box input.w100{width:100%; margin-top:10px;}
            #wrap .left_box input.mt-10{margin-top:10px;}

        </style>
    </head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div id="wrap">
    <div class="left_box">
        <h1>마이페이지</h1>
        <input type="hidden" name="m_id" value="${sessionScope.m_id}">
        <p>아이디</p>
        <input type="text" name="memberId" value="${member.memberId}">
        <p>비밀번호</p>
        <input type="password" name="memberPassword" value="${member.memberPassword}">
        <p>이름</p>
        <input type="text" name="memberName" value="${member.memberName}">
        <p>이메일</p>
        <input type="text" name="memberEmail" value="${member.memberEmail}">
        <p>연락처</p>
        <input type="text" name="memberMobile" value="${member.memberMobile}">
        <p>주소</p>
        <input type="text" name="memberPostCode" value="${member.memberPostCode}" class="w60">
        <input type="text" name="memberAddress" value="${member.memberAddress}" class="w100">
        <input type="text" name="memberDetailAddress" value="${member.memberDetailAddress}" class="w50">
        <input type="text" name="memberExtraAddress" value="${member.memberExtraAddress}" class="w50">
    </div>
</div>
</body>
</html>
