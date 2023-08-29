<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
    /* 마이페이지 시작 */
    div {
        /* border: 1px solid red; */
    }
    .background {
        background-color: #f8f8f8;
        height: 800px;
        /* border: 1px solid red; */
    }
    .outer {
        /* border: 1px solid red; */
        /* background-color: #f8f8f8; */
        /* background-color: #f8f8f8; */
        width: 50%;
        height: 100%;
        margin: auto;
    }
    #myReview-header {
        width: 100%;
        height: 15%;
        /* border: 1px solid red; */
        text-align: center;
        padding-top: 10px;
    }
    #myReview-header>img {
        width: 200px;
        height: 100px;
    }
    #myReview-body {
        width: 100%;
        height: 80%;
        /* border: 1px solid red; */
        background-color: white;
        border-radius: 20px;
        /* background-color: #f8f8f8; */
        /* background-color: white; */
    }
    #myReview-footer {
        width: 100%;
        height: 5%;
    }
    .float {
        float: left;
        height: 100%;
    }
    #left {
        width: 20%;
        padding-top: 40px;
        border-right: 2px solid #f8f8f8;
        /* border: 1px solid red; */
    }
    .tab {
        width: 100%;
        height: 10%;
        text-align: center;
        line-height: 5;
        font-size: 15px;
        font-weight: bold;
        color: #202020;
        /* border: 1px solid red; */
    }
    .tab:hover {
        cursor: pointer;
        opacity: 0.5;
    }
    .tab-inner {
        display: none;
        text-align: center;
        line-height: 2;
        font-size: 12px;
        color: #707070;
    }
    .tab-inner:hover {
        cursor: pointer;
        opacity: 0.5;
    }
    #right {
        width: 80%;
        /* border: 1px solid red; */
    }
    #right-top {
        width: 100%;
        height: 15%;
        /* border: 1px solid red; */
    }
    #right-bottom {
        width: 100%;
        height: 85%;
        /* border: 1px solid red; */
    }
    #myReview-title {
        /* border: 1px solid red; */
        width: 80%;
        height: 100%;
        margin: auto;
        border-bottom: 2px solid #8c8c8c;
    }
    #myReview-title>h4 {
        color: #202020;
        font-weight: normal;
        line-height: 6;
        /* border: 1px solid red; */
    }
    #myReview-title>h4>span {
        color: #202020;
        font-size: 15px;
    }
    .myReview-content {
        width: 80%;
        height: 200px;
        margin: auto;
        padding-top: 20px;
        padding-bottom: 10px;
        margin-top: 20px;
        border: 1px solid #8c8c8c;
        border-radius: 5px;
        /* background-color: #f8f8f8; */
    }
    .myReview-content>div {
        float: left;
        height: 100%;
    }
    #profile {
        width: 30%;
        line-height: 10;
    }
    #profile>img {
        /* border-radius: 40px; */
        /* background-color: #f8f8f8; */
    }
    #description {
        width: 70%;
    }
    #selectLevel {
        margin: 10px;
        display: block;
        height: 35px;
        padding: 0 12px;
        line-height: 32px;
        border-radius: 3px;
        border: 1px solid #bbb;
        box-sizing: border-box;
        background-color: #f9f9f9;
        text-decoration: none;
        text-align: center;
        font-size: 13px;
        color: #202020;
    }
    #selectLevel:hover {
        opacity: 0.7;
    }
    #toggle {
        width: 100%;
    }
    #level-condition {
        display: none;
        margin-top: 10px;
        width: 100%;
        text-align: center;
    }
    #level-condition th, #level-condition td {
        border: 1px solid #bbb;
    }
    .form-title {
        color: #707070;
        font-size: 15px;
    }
    .form-content>input {
        color: #202020;
        font-size: 14px;
        border-style: none;
    }
    /* //마이페이지 끝 */
</style>
</head>
<body>
    <%@ include file = "../common/header.jsp" %>
    
    <div class="background">

        <div class="outer">
    
            <div id="myReview-header">
                <img src="resource/logo/로고2.png">
            </div>
    
            <div id="myReview-body">
                
               <div id="left" class="float">

                    <div class="tab">마이페이지</div>
                    <div class="tab-inner" onclick="myMenu(1);">회원정보조회</div>
                    <div class="tab">마이티켓</div>
                    <div class="tab-inner" onclick="myMenu(2);">예매조회</div>
                    <div class="tab">마이리뷰</div>
                    <div class="tab-inner" onclick="myMenu(3);">한줄평조회</div>
                    <div class="tab-inner" onclick="myMenu(2);">한줄평작성</div>
                    <div class="tab">마이등급</div>
                    <div class="tab-inner" onclick="myMenu(4);">등급조회</div>

                </div>

                <script>

                    $(".tab").click(function() {
                                
                        $(this).nextUntil(".tab").slideToggle();

                    });

                    function myMenu(num) {
                    	
                    	switch(num) {
                    	case 1 :
                    		location.href = "<%= contextPath %>/myPage.us";
                    		break;
                    	case 2 :
                    		location.href = "<%= contextPath %>/myTicket.us";
                    		break;
                    	case 3 :
                    		location.href = "<%= contextPath %>/myReview.us";
                    		break;
                    	case 4 :
                    		location.href = "<%= contextPath %>/myLevel.us";
                    		
                    	}

                    }

                </script>


                <div id="right" class="float">
                    <div id="right-top">
                        <div id="myReview-title">
                            <h4>
                                마이등급 <span>등급조회</span>
                            </h4>
                        </div>
                    </div>
                    
                    <div id="right-bottom">

                        <div class="myReview-content" align="center">
                            
                            <div id="profile">
                                <img src="resource/이미지자료/profile2.png" width="150" height="150">
                            </div>
                            <div id="description">

                                <h4>XXX 님의 회원등급은 XXX 입니다.</h4>
                                <br>
                                <h6>주문 X건 | 주문금액 X원</h6>
                                <br>
                                <button id="selectLevel">등급 알아보기</button>

                            </div>
                            
                            <div id="toggle">

                                <table id="level-condition">
                                    <tr>
                                        <th width="100">등급</th>
                                        <th width="100">등급별 혜택</th>
                                        <th width="500">등급 달성조건</th>
                                    </tr>
                                    <tr>
                                        <td>아이언</td>
                                        <td></td>
                                        <td>가입시 달성</td>
                                    </tr>
                                    <tr>
                                        <td>브론즈</td>
                                        <td>1% 할인</td>
                                        <td>12개월 내에 50만원 이상 결제</td>
                                    </tr>
                                    <tr>
                                        <td>실버</td>
                                        <td>5% 할인</td>
                                        <td>12개월 내에 100만원 이상 결제</td>
                                    </tr>
                                    <tr>
                                        <td>골드</td>
                                        <td>10% 할인</td>
                                        <td>12개월 내에 200만원 이상 결제</td>
                                    </tr>
                                    <tr>
                                        <td>마스터</td>
                                        <td>15% 할인</td>
                                        <td>12개월 내에 400만원 이상 결제</td>
                                    </tr>
                                </table>

                            </div>
                            
                        </div>

                    </div>

                </div>

            </div>

            <div id="myReview-footer"></div>
    
        </div>

    </div>

    <script>

        $("#selectLevel").click(function() {

           if( $("#level-condition").css("display") == "none") {
             $("#level-condition").css("display", "block");
           }
           else {
             $("#level-condition").css("display", "none");
           }

        });

    </script>

    <%@ include file = "../common/footer.jsp" %>
</body>
</html>