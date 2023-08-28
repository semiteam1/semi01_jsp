<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>티켓딱대</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <style>
        /* 기본 세팅 존 */

        /* 모든 마진 패딩 지우 */
        body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, p, table, th, td, form, fieldset, legend, textarea, input, select, textarea, button, article, aside, dialog, footer, header, section, footer, nav, figure, main {
        margin: 0;
        padding: 0;
        } 

        /* 폰트 옵션 */
        body, input, select, textarea, button, pre {
        font-family: 'Notosans', -apple-system, BlinkMacSystemFont, Apple SD Gothic Neo, 'Malgun Gothic', Arial, sans-serif;
        font-size: 14px;
        letter-spacing: -0.03em;
        color: #242428;
        }
        
        a{
            text-decoration: none;
        }

        /* 기본세팅 끝 */

        /* 헤더 */

        /* 배경 옵션*/
        .warp{
            /* border: 1px solid plum; */
            display: flex;
            flex-direction: column;
            position: relative;
            min-width: 1180px;
            min-height: 100%;
            }

        /* 유틸란 */
        .util {
            flex-direction: column;
            position: relative;
            min-width: 1180px;
            margin: 0 auto;
            width: 100%;
            height: 37px;
        
            background-color: rgb(241, 241, 241);
            }
               
        .util_inner{ /* 배경색 주기위한 디브*/
            /* border: 1px solid yellow; */
           
            margin: auto;
            width: 1120px;
            height: 37px;
        }
        /* 유틸난 나누는 디브 */
        .util_inner>div{
            /* border: 1px solid blue; */
            height: 37px;
            box-sizing: border-box;
            float: left;
        }
        .left{
            width: 65%;
        }
        .right{
            width: 35%;
        }
        /* 오른쪽 내용물 */
        .right>div{
            /* border: 1px solid blue; */
            height: 100%;
            float: left;
            box-sizing: border-box;
        }
        .login,.sin,.contact{
            width: 23.5%;
        }
        .check{
            width: 29.5%;
        }
        /* 유틸란 링크 사이즈 */
        .header_util_link {
        display: flex;
        align-items: center; /* Center vertically */
        justify-content: center; /* Center horizontally */
        margin-top: 8px;
        font-size: 15px;
        line-height: 18px;
        color: #878d95;
        }
        /* 유틸 끝 */

        /* 메인 시작 */
        .header_main {
        /* border: 1px solid ; */
        display: flex;
        align-items: center;
        margin: 0 auto;
        width: 1120px;
        height: 88px;
        }
        .header_main>div{
            /* border: 1px solid yellowgreen; */
            height: 100%;
        }
        .header_main_left{
            width: 13%;
        }
        .header_main_mid{
            width: 67%;
        }
        .header_main_right{
            width: 20%;
        }
        /* 메인 미드 로고 */
        #logo_main{
            width: 100%;
            height: 100%;
        }
        /* 메인 미드  케테고리 */
        .header_nav_link {
        /* border: 1px solid; */
        width: 30%;
        font-size: 30px;
        font-weight: 700;
        line-height: 34px;
        letter-spacing: -0.04em;
        color: #242428;
        margin-left: 25px;
        margin-top:  35px; 
        float: left;       
        }
        /* 메인 미드 끝 */

        /* 네비게이터 */

        .header_gnb { /* 내비게이터 배경 */
        /* border: 1px solid orangered; */
        position: relative;
        border-top: 1px solid #ecedf2;
        border-bottom: 1px solid #242428;
        width: 100%;
        height: 58px;
        margin: auto;
        }
        #navigator{
            width: 1120px;
            height: 40px; 
            margin: auto;
            padding-top: 10px;
        }
        #navi{
            list-style-type: none;
            padding: 0;
            margin: 0;
            height: 100%;
            width: 70%;
            /* border: 1px solid black; */
            float: left;
            box-sizing: border-box;
        }
        #navi>li{
            float: left;
            /* border: 1px solid blue; */
            width: 8%;
            height: 100%;
            text-align: center;
        }
        #navi a{
            /* border: 1px solid orange; */
            text-decoration: none;
            color: #242428;
            /* color: orange; */
            font-size: 18px;
            font-weight: 900;
            width: 100%;
            height: 100%;
            display: block;
            line-height: 35px;
            transform: scale(1);
        }
        #navi a:hover{
            color: orangered;
        }
        #navi>li>ul{
            list-style-type: none;
            padding: 0;
            display: none;
            border: 1px solid;
            width: 150%;
        }
        #navi>li>ul a{font-size: 18px;}
        #navi>li>a:hover+ul{display: block;}
        #navi>li>ul:hover{display: block;}
        #navi>li>ul>li{
            background-color: white;
        }
        /* 네비 끝 */
        
        
        .header_search_box {
            /* border: 1px solid red; */
            width: 30%;
            height: 100%;
            float: left;
            box-sizing: border-box;   
        }
        .header_search_input {
        width: 240px;
        padding: 7px 55px 7px 18px;
        border: 1px solid #dcdde1;
        border-radius: 38px;
        background: #fff;
        font-size: 14px;
        line-height: 22px;
        color: #242428;
        box-sizing: border-box;
        outline: none;
        caret-color: #fa2828;
        float: left;
        }
        #btnImg{
            width: 35px;
            height: 35px;
            /* border:  2px solid red; */
            /* margin-top: 10px; */
            border: 0;
            background-color: white;
        }
        #btn_Img{
            width: 100%;
            height: 100%;
        }
        
        /* 검색 끝 */
        /* 헤더 끝 */


        /* 바디 시작 */
               /* 바디 메인 */
               .원하는데로_바꾸세요{
            border: 1px solid lightgray;
            background-color: lightgray;
            height: 900px;
            width: 100%;
        }

        /* body 고객센터*/
        .servicecenter{
            background-color:black;
            height: 100px;
            width: 1050px;
            margin:auto;
            margin-right: 23.8%;
            margin-top:50px;            
        }
        .servicecenter>h1{
            color:white;
            line-height:100px;
        } 

        /*body leftmenu*/
        .원하는데로_바꾸세요 .leftmenu{
            background-color: white;
            font-size: 19px;
            text-align:center;
            line-height: 100px;
            width: 160px;
            height: 300px;
            margin-left: 21%;
            margin-top: 5px;
            float:left;
        }
        .원하는데로_바꾸세요 .leftmenu div{
            width:100%;
            height: 33.3%;
            border: 1px solid gray;
        }
        /*바디의 오른쪽 메뉴*/
        .원하는데로_바꾸세요 .rightmenu{
            width: 880px;
            height:400px;
            margin-right: 23.8%;
            margin-top: 5px;
            float:right;
        }
        #bodyright{
            width: 100%;
            height:100%;
            /*width:50%;
            height:50%;
            float:left;
            margin:5px;*/
        }
        /* body 오른쪽 메뉴*/
        #bodyright>#son{
            background-color: white;
            border-radius: 20px;
            width:48%;
            height:46%;
            float:left;
            margin:1%;
            text-align:center;
            line-height: 200px;
        }
        /* body 오른쪽 메뉴 이미지*/
        #qnalogomain{
            width: 100%;
            height: 100%;
            border-radius: 20px;
        }
        #reservelogomain{
            width: 100%;
            height: 100%;
            border-radius: 20px;
        }
        #noticelogomain{
            width: 100%;
            height: 100%;
            border-radius: 20px;
        }
        #questionlogomain{
            width: 100%;
            height: 100%;
            border-radius: 20px;
        }
        .bottomfunction{
            width:880px;
            height:200px;
            margin-right:23.8%;
            margin-top: 5px;
            float:right;
        }
        /*body qna창*/
        #bson{
            border: 1px solid white;
            border-radius: 10px;
            width: 98%;
            height:90%;
            float:left;
            margin:1%;
            cursor:pointer;
            font-size: 16px;
        }
        #bson>p{
            box-sizing: border-box;
            display:none;
        }
        #bson>#topqna{
            border-bottom-style: solid;
            border-bottom-color: black;
        }
        #bson>#qnacontent{
            font-size: 15px;
        }
        #bson>div{
            border-bottom-style: solid;
            border-color: black;
            border-width: 1px;
        }



        

        
        /* 바디 끝 */
        /* 푸터 시작 */
        div{
            /* border: 1px solid pink; */
            box-sizing: border-box;
            
        }
        .footer{
            border-top: 1px solid black ;
        }
        #footer>div{width: 100%;}


        #footer_1{
            width: 1120px;
            height: 30px;  
            border-top: 1px; 
            margin: auto; 
            margin-top: 10px;
            /* border: 1px solid red; */
        } 
        #footer_1>a{
            text-decoration: none;
            color: black;
            font-size: 13px;
            font-weight: 500;
            margin: 15px; 
        }
        #footer_2{
            height: 80%;
            border-top: 2px solid rgba(212, 212, 212, 0.459);
        }

        #p1{
            width: 1120px; 
            height: 80%;
            /* margin: auto;  */
            padding: 5px 15px; 
            /* background-color: #878d95; */
        }
        
        #footer_2>p{
            /* width: 100%; */
            /* border: 1px solid blueviolet; */
            box-sizing: border-box;
            margin: auto;
            font-size: 12px;
            /* color:rgb(58, 58, 58); */
            
        }
        #p2{
            height: 20%; 
            text-align: center; 
            padding-bottom: 15px;
            padding-top: 10px; 
            color: rgba(184, 184, 184, 0.747);
            font-weight: 800;
        }

       
        /* 푸터 끝 */
        /* top버튼 */
        #backToTopBtn {
        display: none;
        position: fixed;
        bottom: 20px;
        right: 200px;
        width: 60px;
        height: 40px;
        background-color: white;
        color: rgb(253, 103, 103);
        border: 1px solid rgba(206, 206, 206, 0.671);
        border-radius: 5px;
        font-size: 20px;
        font-weight: 600;
        cursor: pointer;
        border-radius: 38px;
        line-height: 0;
        
    }
    </style>
</head>
<body>
   

    <div class="warp"> <!-- 기본 배경-->

        <div class="header"> <!-- 헤더-->

            <div class="util"> <!-- 유틸 부분 (로긴..)-->
                <div class="util_inner">
                    <div class="left"></div>
                    <div class="right" >
                        <div class="login">
                            <a href="#" class="header_util_link" >로그인</a>
                        </div>
                        <div class="check">
                            <a href="#" class="header_util_link">예매확인/취소</a>
                        </div>
                        <div class="sin">
                            <a href="#" class="header_util_link">회원가입</a>
                        </div>
                        <div class="contact">
                            <a href="#" class="header_util_link">고객센터</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="header_main"> <!-- 헤더 메인 (로고, 대카테고리)-->
                <div class="header_main_left"> <!-- 로고-->
                    <a href="#" class="logo"><img src="../resorces/로고/png.png" id="logo_main" alt=""></a>
                </div>
                <div class="header_main_mid"> <!-- 대카테고리-->
                    <a href="#" class="category"  >
                        <p  class="header_nav_link" >영화/전시/공연</p></a>
                    <a href="#" class="category" onclick="not();">
                        <p class="header_nav_link"  style="width: 10%; color: #979797;" >항공</p>
                        <p class="header_nav_link" style=" color: #979797;">스포츠</p></a>
                </div>

                <script>
                    function not() {
                        alert("준비중입니다.")
                    }
                </script>


                <div class="header_main_right"></div> <!-- 로고공백 -->
            </div>

            <div class="header_gnb">  <!-- 해더 네비게이터 -->
                <div id="navigator"> <!-- 네비게이터 기본 틀-->
                    <ul id="navi" > <!-- 카테고리-->
                        <li><a href="#" style="color: red;">홈</a>
                        </li>
                        <li><a href="#">영화</a>
                            <ul>
                                <li><a href="#">로맨스</a></li>
                                <li><a href="#">공포/스릴러</a></li>
                                <li><a href="#">코미디</a></li>
                                <li><a href="#">액션</a></li>
                            </ul>
                        
                        </li>
                        <li><a href="#">전시</a>
                            <ul>
                                <li><a href="#">그림전시</a></li>
                                <li><a href="#">작품전시</a></li>
                                <li><a href="#">사진전시</a></li>
                                <li><a href="#">체험전시</a></li>
                            </ul>
                        </li>
                        <li><a href="#">공연</a>
                            <ul>
                                <li><a href="#">뮤지컬</a></li>
                                <li><a href="#">연극</a></li>
                                <li><a href="#">클래식</a></li>
                                <li><a href="#">콘서트</a></li>
                            </ul>
                        </li>
                        <li  style="width: 2px; height: 20px; margin-top: 8px; background-color: #515155;"></li>
                        <li><a href="#">랭킹</a></li>
                        <li><a href="#">지역</a>
                            <ul class="local">
                                <li><a href="#">서울</a></li>
                                <li><a href="#">경기/이천</a></li>
                                <li><a href="#">충청/강원</a></li>
                                <li><a href="#">대구/경북</a></li>
                                <li><a href="#">부산/경남</a></li>
                                <li><a href="#">광주/전라</a></li>
                                <li><a href="#">제주</a></li>
                            </ul>
                        </li>
                        <!-- 랭킹 & 지역 -->
                       

                        
                    </ul>
                    <div class="header_search_box" > <!-- 검색 -->
                        <input type="search" name="search" id="search" class="header_search_input" placeholder="검색어를 입력해 주세요" value="">
                        <button id="btnImg"><img src="../resorces/search.png" id="btn_Img" alt=""></button>
                    </div>           
                </div>

            </div>

<!-- 내용 넣을 수 있는 구간 시작 -->

<div class="원하는데로_바꾸세요">
    <div class="servicecenter">
        <h1 align="center">고객센터</h1>
    </div>

    <div class="servicefunction">
        <!-- 바디의 왼쪽메뉴-->
        <div class="leftmenu">
            <div>고객센터 홈</div>
            <div>공지사항</div>
            <div>qna</div>
        </div>
        <!-- 바디의 오른쪽메뉴-->
        <div class="rightmenu">
            <div id="bodyright"> 
                <div id="son">
                    <a href="#" class="qnalogo"><img src="../resorces/이미지자료/customer/qna.png" id="qnalogomain" alt=""></a>
                </div>
                <div id="son">
                    <a href="#" class="reservelogo"><img src="../resorces/이미지자료/customer/reserve.png" id="reservelogomain" alt=""></a>
                </div>
                <div id="son">
                    <a href="#" class="noticelog"><img src="../resorces/이미지자료/customer/notice.png" id="noticelogomain" alt=""></a>
                </div>
                <div id="son">
                    <a href="#" class="questionlog"><img src="../resorces/이미지자료/customer/question.png" id="questionlogomain" alt=""></a>
                </div>
            </div>
        </div>
    </div>

    <!-- 바디 아래메뉴-->
    <div class="bottomfunction">
        <div id="bson">
            <h2 align="center">자주묻는 질문</h2>
            <div>비밀번호를 변경하고 싶어요</div>
            <p>A. 기다려</p>
            <div>내 정보를 변경하고 싶어요</div>
            <p>A. 너도 기다려</p>
            <div>할인이 되는 신용카드는?</div>
            <p>A. 너도기다리자</p>
        </div>
        
    </div>
    <script>
        $(function(){
            $(".leftmenu").hover().css("cursor","pointer");
            $("#bson>div").click(function(){
                // $(this) : 클릭이벤트가 발생한 div 요소
                // 우리는 그 요소의 뒤의 요소를 선택해야함.(같은 레벨에 있음)
    
                // $(this).next() : 클릭이벤트가 발생한 div 요소 뒤에 있는 메소드
                // 보여지는 상태면 사라지게 , 안보이면 나타나게
    
                const $p = $(this).next(); // jQuery 방식으로 선택된 요소를 담아둘 때
    
                if($p.css("display")=="none"){
                    
                    // 기존꺼는 닫히면서 지금꺼만 열리게
                    $(this).siblings("p").slideUp();
                    //보여지게끔
                    // $p.css("display","block");
                    $p.slideDown();
                }else {
                    $p.slideUp();
                }
    
            })
        })
    </script>
</div>

<!-- 내용물 넣을 수 있는 구간 끝 -->
    <!-- 바디 끝 -->

            <div class="footer">
                <div id="footer_1">
                    <a href="#">이용약관</a>|
                    <a href="#">개인정보취급방침</a>|
                    <a href="#">인재채용</a>|
                    <a href="#">고객센터</a>
                </div>
                <div id="footer_2">
                    <P id="p1">
                        <br>
                        이눔식기 주식회사 <br><br>

                        주소 :  서울특별시 강남구 테헤란로14길 6 남도빌딩 3F H-class | 대표이사 : 김시연 | 사업자등록번호 : 없떵<br>
                        010-2646-7652 | @naver.com | 개발자코스 : 종일반 | 사업자정보확인 | 개인정보보호책임자 : 김시연
                    </P>
                    <p id="p2">
                        Copyright © 1998-2023 KH Information Educational Institute All Right Reserved
                    </p>
            </div>
            

        </div>        
             <!-- Back to top button -->
    <button id="backToTopBtn">Top</button>

    <!-- Anchor element representing the top of the page -->
    <a href="#top" id="topAnchor"></a>

    <!-- Your script files can go here -->
   
   <script>
        // When the page is fully loaded
        window.onload = function () {
            var backToTopBtn = document.getElementById("backToTopBtn");
            var topAnchor = document.getElementById("topAnchor");
    
            // Show/hide the back-to-top button based on scroll position
            window.onscroll = function () {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    backToTopBtn.style.display = "block";
                } else {
                    backToTopBtn.style.display = "none";
                }
            };
    
            // Scroll to the top when the button is clicked
            backToTopBtn.onclick = function () {
                document.documentElement.scrollTop = 0;
            };
        };
    </script>
    
</div>
   




</body>
</html>