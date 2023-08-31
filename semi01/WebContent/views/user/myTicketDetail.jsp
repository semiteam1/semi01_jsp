<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
    /* 마이티켓 시작 */
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
    #myTicket-header {
        width: 100%;
        height: 15%;
        /* border: 1px solid red; */
        text-align: center;
        padding-top: 10px;
    }
    #myTicket-header>img {
        width: 200px;
        height: 100px;
    }
    #myTicket-body {
        width: 100%;
        height: 80%;
        background-color: white;
		border-radius: 20px;
    }
    #myTicket-footer {
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
    #myTicket-title {
        /* border: 1px solid red; */
        width: 80%;
        height: 100%;
        margin: auto;
        border-bottom: 2px solid #8c8c8c;
    }
    #myTicket-title>h4 {
        color: #202020;
        font-weight: normal;
        line-height: 6;
        /* border: 1px solid red; */
    }
    #myTicket-title>h4>span {
        color: #202020;
        font-size: 15px;
    }
    .myTicket-content {
        width: 80%;
        height: auto;
        margin: auto;
        /* border: 1px solid blue; */
        line-height: 3;
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
    .myTicket-content button {
        margin: 10px;
        display: inline;
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
    .myTicket-content button:hover {
        opacity: 0.7;
    }
    .btns {
        width: 100%;
        text-align: center;
    }
    /* //마이페이지 끝 */
</style>
</head>
<body>
    <%@ include file = "../common/header.jsp" %>
    
    <div class="background">

        <div class="outer">
    
            <div id="myTicket-header">
                <img src="resource/logo/로고2.png">
            </div>
    
            <div id="myTicket-body">
                
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
                        <div id="myTicket-title">
                            <h4>
                                마이티켓 <span>예매상세조회</span>
                            </h4>
                        </div>
                    </div>
                    
                    <div id="right-bottom">
                        <div class="myTicket-content">
                            
                            <table class="content-table">
                                <tr>
                                    <td class="form-title" width="100">공연 제목</td>
                                    <td class="form-content">콘크리트 유토피아</td>
                                </tr>
                                <tr>
                                    <td class="form-title">공연 장소</td>
                                    <td class="form-content">CGV 고양백석, 1관</td>
                                </tr>
                                <tr>
                                    <td class="form-title">공연 일시</td>
                                    <td class="form-content">2023.08.13 (일) 11:00</td>
                                </tr>
                                <tr>
                                    <td class="form-title">관람 인원</td>
                                    <td class="form-content">성인 2명</td>
                                </tr>
                                <tr>
                                    <td class="form-title">예매 금액</td>
                                    <td class="form-content">30,000원 - 성인 2명(15000X2)</td>
                                </tr>
                                <tr>
                                    <td class="form-title">할인 금액(할인수단)</td>
                                    <td class="form-content">-15,000원(등급할인)</td>
                                </tr>
                                <tr>
                                    <td class="form-title">결제 수단</td>
                                    <td class="form-content">계좌이체</td>
                                </tr>
                                <tr>
                                    <td class="form-title">결제 금액</td>
                                    <td class="form-content">15,000원</td>
                                </tr>
                            </table>

                            <div class="btns">
                                <button onclick="history.back();">돌아가기</button>
                                <button onclick="ticketDelete();">예매취소</button>
                            </div>
                            
                        </div>
                        
                        <script>

                            function ticketDelete() {
    
                                if(confirm("해당 예매내역을 삭제하시겠습니까?")) {
                                    location.href = "#";
                                }
                                else {
                                    return false;
                                }
    
                            }
    
                        </script>
                        
                    </div>
                </div>

            </div>

            <div id="myTicket-footer"></div>
    
        </div>

    </div>

    <%@ include file = "../common/footer.jsp" %>
</body>
</html>