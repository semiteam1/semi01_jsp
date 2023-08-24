<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<link href="../../resources/image/logo2.png" rel="shortcut icon" type="image/x-icon">
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
    
        /* background-color: rgb(241, 241, 241); */
        background-color: #f8f8f8;
        }
           
    .util_inner{ /* 배경색 주기위한 디브*/
        /* border: 1px solid yellow; */
       
        /* margin: auto; */
        width: 1120px;
        height: 37px;
        margin-left: 450px;
    }
    /* 유틸난 나누는 디브 */
    .util_inner>div{
        /* border: 1px solid blue; */
        height: 37px;
        box-sizing: border-box;
        float: left;
    }
    .left{
        width: 60%;
    }
    .right{
        width: 40%;
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
    margin-left: 360px;
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
    /* border: 1px solid blue; */
    position: relative;
    border-top: 1px solid #ecedf2;
    border-bottom: 1px solid #f8f8f8;
    width: 100%;
    height: 58px;
    margin: auto;
    }
    #navigator{
        width: 1200px;
        height: 40px; 
        margin: auto;
        padding-top: 10px;
        margin-left: 350px;
        /* border: 1px solid red; */
    }
    #navi{
        list-style-type: none;
        padding: 0;
        margin: 0;
        height: 100%;
        width: 75%;
        /* border: 1px solid blue; */
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

    /* 검색 시작 */
    
    .header_search_box {
        /* border: 1px solid green; */
        width: 25%;
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
        margin-left: 10px;
    }
    #btn_Img{
        width: 100%;
        height: 100%;
    }
    
    /* 검색 끝 */
    /* 헤더 끝 */

    
</style>
</head>
<body>
	<div class="warp"> <!-- 기본 배경-->

        <div class="header"> <!-- 헤더-->

            <div class="util"> <!-- 유틸 부분 (로긴..)-->
                <div class="util_inner">
                    <div class="left"></div>
                    <!-- 로그인 전 화면 -->
                    <!-- <div class="right" >
                        <div class="login">
                            <a href="#" class="header_util_link" >로그인</a>
                        </div>
                        <div class="check">
                            <a href="#" class="header_util_link" onclick="book();">예매확인/취소</a>
                        </div>

                        <script>

                            function book() {
                                
                                alert("로그인 후에 이용 가능합니다.");

                            }

                        </script>

                        <div class="sin">
                            <a href="#" class="header_util_link">회원가입</a>
                        </div>
                        <div class="contact">
                            <a href="#" class="header_util_link">고객센터</a>
                        </div>
                    </div> -->

                    <!-- 로그인 후 화면 -->
                    <div class="right" >
                        <div class="login">
                            <a href="#" class="header_util_link" >로그아웃</a>
                        </div>

                        <div class="check">
                            <a href="<%= contextPath %>/myTicket.us" class="header_util_link">예매확인/취소</a>
                        </div>

                        <div class="sin">
                            <a href="<%= contextPath %>/myPage.us" class="header_util_link">마이페이지</a>
                        </div>

                        <div class="contact">
                            <a href="#" class="header_util_link">고객센터</a>
                        </div>
                    </div>

                </div>
            </div>

            <div class="header_main"> <!-- 헤더 메인 (로고, 대카테고리)-->
                <div class="header_main_left"> <!-- 로고-->
                    <a href="#" class="logo"><img src="resources/image/logo.png" id="logo_main"></a>
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
                        <li><a href="<%= contextPath %>" >홈</a>
                        </li>
                        <li><a href="<%= contextPath %>/movie.pr" style="color: red;">영화</a>
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
                        
                        </li>

                    </ul>
                    <div class="header_search_box" > <!-- 검색 -->
                        <input type="search" name="search" id="search" class="header_search_input" placeholder="검색어를 입력해 주세요" value="">
                        <button id="btnImg"><img src="resources/image/search.png" id="btn_Img" alt=""></button>
                    </div>           
                </div>

            </div>
        </div>    
    </div>
            
            
            
</body>
</html>