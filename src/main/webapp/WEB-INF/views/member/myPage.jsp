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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
        <form action="/member/update" method="post" name="updateSubmit">
            <h1>마이페이지</h1>
            <input type="hidden" name="m_id" value="${sessionScope.m_id}">
            <p>아이디</p>
            <input type="text" name="memberId" value="${member.memberId}" readonly>
            <p>비밀번호</p>
            <input type="password" name="memberPassword" id="memberPw" placeholder="비밀번호를 입력해주세요">
            <p>이름</p>
            <input type="text" name="memberName" value="${member.memberName}" readonly>
            <p>이메일</p>
            <input type="text" name="memberEmail" value="${member.memberEmail}">
            <p>연락처</p>
            <input type="text" name="memberMobile" value="${member.memberMobile}">
            <p>주소</p>
            <input type="text" name ="memberPostCode"  id="sample6_postcode" value="${member.memberPostCode}" class="w60">
            <a href="javascript:;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="postal">우편번호 찾기</a>
            <input type="text" name ="memberAddress" id="sample6_address" value="${member.memberAddress}" class="w100">
            <input type="text" name ="memberDetailAddress" id="sample6_detailAddress" value="${member.memberDetailAddress}" class="w50">
            <input type="text" name ="memberExtraAddress" id="sample6_extraAddress" value="${member.memberExtraAddress}"placeholder="참고항목" class="w50">
            <input type="button" onclick="updateMy()" value="수정완료">
        </form>
    </div>
</div>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function updateMy(){
        console.log("호출")
        let pw = document.getElementById("memberPw").value;
        let pwDB = ${member.memberPassword}
        if(pw == pwDB){
            updateSubmit.submit();
            alert("수정 완료!")
        }else {
            alert("비밀번호를 확인해주세요");
        }
    }

    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }


</script>
</html>
