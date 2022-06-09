<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-09
  Time: 오전 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BoardDetail</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
</head>
<style>
    .container{padding:0;}
    .center{text-align:Center}
    .left{text-align:left}
    .right{text-align:right}
    .block{display:block;}
    .inline_bottom{display:inline-block; vertical-align:bottom;}
    p{margin:0;}

    body{width:100%; background:rgb(226, 221, 243);}
    .table_layout{padding:25px; box-sizing:border-box; background:#fff; border-radius:20px; max-width:1000px; margin:0 auto;}
    .table_layout table{width:100%; table-layout: fixed; border:1px solid #aaa;}
    .table_layout table tbody tr{border-bottom:1px solid #aaa;}
    .table_layout table tbody tr th{word-break: break-all; padding:10px; box-sizing:border-box; border-right:1px solid #aaa; text-align:center;}
    .table_layout table tbody tr td{word-break: break-all; padding:10px; box-sizing:border-box; border-right:1px solid #aaa;}

    .write_custom{padding:20px; box-sizing:border-box; background:#eee; margin-top:20px;}
    .write_custom input{margin-bottom:10px;}
    .write_custom .area{display:inline-block; vertical-align:top; width:calc(100% - 144px); margin-right:10px;}
    .write_custom .area textarea{width:100%; padding:10px; box-sizing:border-box; font-size:18px;}
    .write_custom .area textarea::placeholder{font-size:18px;}
    .write_custom .button_box{display:inline-block; vertical-align:top; height:130px; width:130px;}
    .write_custom .button_box input{width:100%; height:100%; background:rgb(226, 221, 243); color:#222; border:0; border-radius:10px;}


    .text_box{font-size:0; letter-spacing:-4px; margin-top:30px;}
    .text_box .box{padding:20px 0; box-sizing:border-box; border-bottom:1px solid #aaa;}
    .text_box .right_box p{font-size:17px; letter-spacing:-0.04em; color:#666; font-weight:300; display:inline-block; vertical-align:middle; padding-right:20px;}
    .text_box .right_box span{font-size:12px; letter-spacing:-0.04em; color:#888; font-weight:200;  display:inline-block; vertical-align:middle;}
    .text_box p.desc{padding-top:10px; font-size:20px; letter-spacing:-0.04em; color:#222; font-weight:400;}
</style>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
    <table>
        <colgroup>
            <col width="12.5%">
            <col width="12.5%">
            <col width="12.5%">
            <col width="12.5%">
            <col width="17%">
            <col width="*">
        </colgroup>
        <tbody>
        <tr>
            <th>글제목</th>
            <td colspan="5">${boardDetail.boardTitle}</td>
        </tr>
        <tr>
            <th>작성자</th>
            <td>${boardDetail.memberId}</td>
            <th>반려견</th>
            <td>${boardDetail.dogName}</td>
        </tr>
        <tr>
            <th>조회수</th>
            <td>${boardDetail.boardHits}</td>
            <th>작성시간</th>
            <td>${boardDetail.boardCreatedDate}</td>
            <th>수정시간</th>
            <td>${boardDetail.boardUpdateDate}</td>
        </tr>
        <tr>
            <th colspan="4" class="center">내용</th>
            <th colspan="2" class="center">사진</th>
        </tr>
        <tr>
            <td colspan="4" class="center">${boardDetail.boardContents}</td>

            <td colspan="2" class="center"><img src="${pageContext.request.contextPath}/upload/${boardDetail.boardFileName}" alt="이미지가없습니다" height="350" width="350"></td>
        </tr>
        </tbody>
    </table>
</body>
</html>
