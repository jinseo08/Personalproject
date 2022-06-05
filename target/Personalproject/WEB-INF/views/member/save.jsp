<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-06-03
  Time: 오전 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MemberSave</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
회원가입 페이지
<form action="/member/save" method="post">
    <p>아이디</p>
    <input type="text" name="memberId" placeholder="아이디" onblur="idCheck()" id="memberId"><br>
    <div id="idCheckResult"></div>
    <p>비밀번호</p>
    <input type="password" name="memberPassword" id="pw" placeholder="비밀번호" onblur="pw_check()"><br>
    <div id="pw_check_result"></div>
    <p>비밀번호 재확인</p>
    <input type="password" id="pw_reaffirming" onblur="pw_check2()" placeholder="비밀번호 재확인">
    <div id="pw_reaffirming_result"></div>
    <p>이름</p>
    <input type="text" name="memberName" id="name" placeholder="이름" onblur="name_check()"><br>
    <div id="name_result"></div>
    <p>이메일</p>
    <input type="text" name="memberEmail" id="email" placeholder="이메일" onblur="email_check()"><br>
    <div id="email_result"></div>
    <p>전화번호</p>
    <input type="text" name="memberMobile" id="mobile" onblur="mobile_check()" placeholder="전화번호"><br>
    <div id="mobile_result"></div>
    <p>주소</p>
    <input type="text" name ="memberPostCode"  id="sample6_postcode" placeholder="우편번호" class="wid140">
    <a href="javascript:;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="postal">우편번호 찾기</a>
    <input type="text" name ="memberAddress" id="sample6_address" placeholder="주소">
    <input type="text" name ="memberDetailAddress" id="sample6_detailAddress" placeholder="상세주소" class="wid220">
    <input type="text" name ="memberExtraAddress" id="sample6_extraAddress" placeholder="참고항목" class="wid220">
    <input type="submit" value="회원가입">
</form>

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function idCheck(){
        let memberId = document.getElementById("memberId").value;
        let idCheckResult = document.getElementById("idCheckResult");
        const exp = /^[a-z\d]{5,20}$/;
        $.ajax({
            type : "post",
            url : "/member/idCheck",
            data : {"memberId" : memberId}, //전송하는 파라미터
            dataType : "text", //리턴받을 데이터 형식
            success : function (result){
                if(result == "ok"){
                    if(memberId.match(exp)){
                        idCheckResult.innerHTML = "사용 가능한 아이디 입니다.";
                        idCheckResult.style.color = "green";
                    }else if(memberId.length == 0){
                        idCheckResult.innerHTML = "필수정보 입니다"
                        idCheckResult.style.color = "red"
                    }else {
                        idCheckResult.innerHTML = "5~20자의 영어 소문자와 숫자만 사용가능합니다"
                        idCheckResult.style.color = "red"
                    }
                }else{
                    idCheckResult.innerHTML = "이미 사용중인 아이디 입니다.";
                    idCheckResult.style.color = "red";
                }
            },
            error : function (){
                alert("오타 체크");
            }
        });
    }
    function pw_check(){
        let pw_check = document.getElementById("pw").value;
        let result = document.getElementById("pw_check_result")
        /* 8~16자 영문 대 소문자, 숫자, 특수문자(-,_,!)를 사용하세요.
        영어 소문자 + 숫자는 필수 */
        const exp = /^(?=.*[a-z])(?=.*\d)[a-z\dA-Z-_!]{8,16}$/;
        if(pw_check.match(exp)){
            result.innerHTML = "사용 가능한 비밀번호입니다"
            result.style.color = "green"
        }else if(pw_check.length == 0){
            result.innerHTML = "필수정보 입니다"
            result.style.color = "red"
        }else{
            result.innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자(-,_,!)를 사용하세요"
            result.style.color = "red"
        }
    }

    function name_check(){
        let name_check = document.getElementById("name").value;
        let result = document.getElementById("name_result");
        const exp = /^[a-z A-Z 가-힣]{2,16}$/;
        if(name_check.length == 0){
            result.innerHTML = "필수정보 입니다"
            result.style.color = "red"
        }else if(name_check.match(exp)){
            result.innerHTML = "완벽한 이름 입니다!"
            result.style.color = "green"
        }else{
            result.innerHTML = "영어와 한글만 사용 가능합니다"
            result.style.color = "red"
        }
    }
    function email_check(){
        let email_check = document.getElementById("email").value;
        let result = document.getElementById("email_result");
        let exp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
        if(email_check.match(exp)){
            result.innerHTML = "사용가능한 이메일 입니다!";
            result.style.color = "green";
        }else{
            result.innerHTML = "이메일 주소를 확인해주세요";
            result.style.color = "red";
        }
    }

    function mobile_check(){
        let mobile_check = document.getElementById("mobile").value;
        let result = document.getElementById("mobile_result");
        let exp = /^\d{3}-\d{3,4}-\d{4}$/;
        if(mobile_check.match(exp)){
            result.innerHTML = "사용가능한 번호 입니다!";
            result.style.color = "green";
        }else{
            result.innerHTML = "전화번호를 확인해주세요";
            result.style.color = "red";
        }
    }

    function pw_check2(){
        let password = document.getElementById("pw").value;
        let pw_check = document.getElementById("pw_reaffirming").value;
        let pw_reaffirming_result = document.getElementById("pw_reaffirming_result");
        if(pw_check.length == 0){
            pw_reaffirming_result.innerHTML = "필수정보입니다"
            pw_reaffirming_result.style.color = "red";
        }else if(password == pw_check){
            pw_reaffirming_result.innerHTML = "비밀번호가 일치합니다";
            pw_reaffirming_result.style.color = "green";

        }else{
            pw_reaffirming_result.innerHTML = "비밀번호가 일치하지 않습니다"
            pw_reaffirming_result.style.color = "red";
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
