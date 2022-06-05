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
    <style>
        body{background:#fff9bd}
        #wrap{width:800px; margin:0 auto; background:#fff; border-radius:100px; padding:50px 20px; box-sizing:border-box;}
        #wrap div + div{padding-top:10px;}
        #wrap .top_box{text-align:center;}
        #wrap .top_box img{max-width:40%;}
        #wrap .bot_box{padding-left:120px;}
        #wrap p{display:inline-block; margin-right:10px; vertical-align:middle;width:30%; font-weight:bold; font-size:17px;}
        #wrap input{height:50px; border-radius:25px; border:0; padding:10px 20px; box-sizing:border-box; font-size:18px; letter-spacing:-0.025em; border:1px solid #aaa; width:50%; display:inline-block; vertical-align:middle;}
        #wrap input.w10{width:16%;}
        #wrap input[type="radio"]{width:3%;}
        #wrap input.center{margin-left:120px; margin-top:30px;}
        #wrap select{height:50px; border-radius:25px; border:0; padding:10px 20px; box-sizing:border-box; font-size:18px; letter-spacing:-0.025em; border:1px solid #aaa; width:16%; display:inline-block; vertical-align:middle;}
    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div id="wrap">
    <div class="top_box">
        <img src="../../../resources/img/dogpage.PNG" alt="">
        <h1>댕댕네 입주신청서</h1>
    </div>
    <div class="bot_box">
        <form action="/dog/save" method="post" enctype="multipart/form-data">
            <div>
                <input type="hidden" name="m_id" value="${m_id}">
            </div>
            <div>
                <p>반려견 이름</p>
                <input type="text" name="dogName" placeholder="이름">
            </div>
            <div>
                <p>반려견 생년월일</p>
                <input type="hidden" name="dogDateBirth" id="dogDateBirth">
                <input type="text" id="year1" placeholder="년" onblur="year_check()" class="w10">
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
                <input type="text" id="day1" placeholder="일" onblur="day_check()"  class="w10">
                <div id="dateBirth_result"></div>
            </div>
            <div>
                <p>반려견 입양날</p>
                <input type="hidden" name="dogDayWeMet" id="dogDayWeMet">
                <input type="text" id="year2" placeholder="년" onblur="year_check2()"  class="w10">
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
                <input type="text" id="day2" placeholder="일" onblur="day_check2()"  class="w10">
                <div id="dateBirth_result2"></div>
            </div>
            <div>
                <p>반려견 성별</p>
                <lable>
                    <input type="radio" name="dogGender" value="수컷">수컷
                    <input type="radio" name="dogGender" value="암컷">암컷
                </lable>
            </div>
            <div>
                <p>중성화 유무</p>
                <lable>
                    <input type="radio" name="dogGenderCk" value="유">유
                    <input type="radio" name="dogGenderCk" value="무">무
                </lable>
            </div>
            <div>
                <p>반려견 프로필사진</p>
                <input type="file" name="dogProfile"><br>
            </div>
            <div>
                <p>반려견 소개</p>
                <input type="text" name="dogContents" placeholder="강아지 소개글"><br>
            </div>
            <input type="submit" value="반려견 등록" class="center">
        </form>
    </div>
</div>
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
