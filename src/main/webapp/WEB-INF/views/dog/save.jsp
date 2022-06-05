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
    <input type="text" name="dogDateBirth" id="dogDateBirth"><br>
    <input type="text" id="year1" placeholder="년" onblur="year_check()">
    <select id ="month1" onchange="month_check()">
        <option value ="월">월</option>
        <option value ="1">1</option>
        <option value ="2">2</option>
        <option value ="3">3</option>
        <option value ="4">4</option>
        <option value ="5">5</option>
        <option value ="6">6</option>
        <option value ="7">7</option>
        <option value ="8">8</option>
        <option value ="9">9</option>
        <option value ="10">10</option>
        <option value ="11">11</option>
        <option value ="12">12</option>
    </select>
    <input type="text" id="day1" placeholder="일" onblur="day_check()">
    <div id="dateBirth_result"></div>

    <p>반려견 입양날</p>
    <input type="text" name="dogDayWeMet" id="dogDayWeMet">

    <input type="text" id="year2" placeholder="년" onblur="year_check2()">
    <select id ="month2" onchange="month_check2()">
        <option value ="월">월</option>
        <option value ="1">1</option>
        <option value ="2">2</option>
        <option value ="3">3</option>
        <option value ="4">4</option>
        <option value ="5">5</option>
        <option value ="6">6</option>
        <option value ="7">7</option>
        <option value ="8">8</option>
        <option value ="9">9</option>
        <option value ="10">10</option>
        <option value ="11">11</option>
        <option value ="12">12</option>
    </select>
    <input type="text" id="day2" placeholder="일" onblur="day_check2()">
    <div id="dateBirth_result2"></div>

    <p>반려견 성별</p>
    <lable>
        <input type="radio" name="dogGender" value="수컷">수컷
        <input type="radio" name="dogGender" value="암컷">암컷
    </lable>
    <p>중성화 유무</p>
    <lable>
        <input type="radio" name="dogGenderCk" value="유">유
        <input type="radio" name="dogGenderCk" value="무">무
    </lable>
    <p>반려견 프로필사진</p>
    <input type="file" name="dogProfile"><br>
    <p>반려견 소개</p>
    <input type="text" name="dogContents" placeholder="강아지 소개글"><br>
    <input type="submit" value="반려견 등록">
</form>
</body>
<script>
    //생년월일 정규식
    function year_check(){
        let year_check = document.getElementById("year1").value;
        let result = document.getElementById("dateBirth_result");
        let today = new Date();
        let yearnow = today.getFullYear();
        let exp = /^[\d]{4,4}$/;

        if(year_check.length == 0){
            result.innerHTML = "태어난 년도 4자리를 정확히 입력해주세요";
            result.style.color = "red";
        }else if(year_check.match(exp)){
            result.innerHTML = "";
            if(year_check < 1900 || year_check > yearnow){
                result.innerHTML = "태어난 년도 4자리를 정확히 입력해주세요";
                result.style.color = "red";
            }
        }
    }

    function month_check(){
        let month_check = document.getElementById("month1").value;
        let result = document.getElementById("dateBirth_result");
        if(month_check == "월"){
            result.innerHTML = "태어난 월을 선택해주세요";
            result.style.color = "red";
        }else{
            result.innerHTML = "";
        }
    }

    function day_check(){
        let day_check = document.getElementById("day1").value;
        let result = document.getElementById("dateBirth_result");
        let exp = /^[\d]{2,2}$/;
        let year1 = document.getElementById("year1").value;
        let month1 = document.getElementById("month1").value;
        let dogDateBirth = String(year1)+ "-" +String(month1)+ "-" +String(day_check);
        if(day_check.match(exp)){
            result.innerHTML = "";
            console.log(dogDateBirth)
            document.getElementById("dogDateBirth").value = dogDateBirth;
            if(day_check >= 31){
                result.innerHTML = "생년월일을 다시 확인해주세요";
                result.style.color = "red";
            }
        }
    }

    //입양날짜 정규식
    function year_check2(){
        let year_check = document.getElementById("year2").value;
        let result = document.getElementById("dateBirth_result2");
        let today = new Date();
        let yearnow = today.getFullYear();
        let exp = /^[\d]{4,4}$/;

        if(year_check.length == 0){
            result.innerHTML = "태어난 년도 4자리를 정확히 입력해주세요";
            result.style.color = "red";
        }else if(year_check.match(exp)){
            result.innerHTML = "";
            if(year_check < 1900 || year_check > yearnow){
                result.innerHTML = "태어난 년도 4자리를 정확히 입력해주세요";
                result.style.color = "red";
            }
        }
    }

    function month_check2(){
        let month_check = document.getElementById("month2").value;
        let result = document.getElementById("dateBirth_result2");
        if(month_check == "월"){
            result.innerHTML = "태어난 월을 선택해주세요";
            result.style.color = "red";
        }else{
            result.innerHTML = "";
        }
    }

    function day_check2(){
        let day_check = document.getElementById("day2").value;
        let result = document.getElementById("dateBirth_result2");
        let exp = /^[\d]{2,2}$/;
        let year2 = document.getElementById("year2").value;
        let month2 = document.getElementById("month2").value;
        let dogDayWeMet = String(year2)+ "-" +String(month2)+ "-" +String(day_check);
        if(day_check.match(exp)){
            result.innerHTML = "";
            console.log(dogDayWeMet)
            document.getElementById("dogDayWeMet").value = dogDayWeMet;
            if(day_check >= 31){
                result.innerHTML = "생년월일을 다시 확인해주세요";
                result.style.color = "red";
            }
        }
    }
</script>
</html>
