<%@page import="java.text.DecimalFormat"%>
<%@page import="com.kh.semi01.user.model.vo.Grade"%>
<%@page import="com.kh.semi01.user.model.vo.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	DecimalFormat df = new DecimalFormat("###,###,###");

	Grade g = (Grade)request.getAttribute("g");

	Book b = (Book)request.getAttribute("b");

	String bookPrice = df.format(b.getPrice() * b.getAudience());
			
	String discountPrice = df.format(b.getPrice() * g.getGradeDiscount());
	
	String payPrice = df.format(b.getPrice() * b.getAudience() - b.getPrice() * g.getGradeDiscount());
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
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
    .content-table b {
    	color: blue;
    }
    /* //마이페이지 끝 */
</style>
</head>
<body>
    <%@ include file = "../common/header.jsp" %>
    
    <div class="background">

        <div class="outer">
    
            <%@ include file = "../common/myPageLogo.jsp" %>
    
            <div id="myTicket-body">
                
				<%@ include file = "../common/myPageTap.jsp" %>

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
                                    <td class="form-content"><%= b.getProduct() %></td>
                                </tr>
                                <tr>
                                    <td class="form-title">공연 장소</td>
                                    <td class="form-content"><%= b.getAddress() %></td>
                                </tr>
                                <tr>
                                    <td class="form-title">공연 일시</td>
                                    <td class="form-content"><%= b.getScreenDate() %></td>
                                </tr>
                                <tr>
                                    <td class="form-title">관람 인원</td>
                                    <td class="form-content">성인 <%= b.getAudience() %>명</td>
                                </tr>
                                <tr>
                                    <td class="form-title">예매 금액</td>
                                    <td class="form-content"><%= bookPrice %>원</td>
                                </tr>
                                <tr>
                                    <td class="form-title">할인 금액</td>
                                    <td class="form-content">-<%= discountPrice %>원 (<b><%= g.getGradeName() %></b> 등급할인 <b><%= (int)(g.getGradeDiscount()*100) %>%</b>)</td>
                                </tr>
                                <tr>
                                    <td class="form-title">결제 수단</td>
                                    <td class="form-content"><%= b.getPayment() %></td>
                                </tr>
                                <tr>
                                    <td class="form-title">결제 금액</td>
                                    <td class="form-content"><%= payPrice %>원</td>
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