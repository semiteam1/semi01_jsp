<%@page import="com.kh.semi01.product.model.vo.ProductIMG"%>
<%@page import="com.kh.semi01.product.model.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<ProductIMG> ilist = (ArrayList<ProductIMG>)request.getAttribute("ilist");
	ArrayList<Product> plist = (ArrayList<Product>)request.getAttribute("plist");
	
	ArrayList<Product> plist1 = (ArrayList<Product>)request.getAttribute("plist1");
	ArrayList<Product> plist2 = (ArrayList<Product>)request.getAttribute("plist2");
	ArrayList<Product> plist3 = (ArrayList<Product>)request.getAttribute("plist3");
	ArrayList<Product> plist4 = (ArrayList<Product>)request.getAttribute("plist4");
	ArrayList<Product> plist5 = (ArrayList<Product>)request.getAttribute("plist5");
	ArrayList<Product> plist6 = (ArrayList<Product>)request.getAttribute("plist6");
	ArrayList<Product> plist7 = (ArrayList<Product>)request.getAttribute("plist7");
	ArrayList<Product> plist8 = (ArrayList<Product>)request.getAttribute("plist8");
	ArrayList<Product> plist9 = (ArrayList<Product>)request.getAttribute("plist9");
	ArrayList<Product> plist10 = (ArrayList<Product>)request.getAttribute("plist10");
	ArrayList<Product> plist11 = (ArrayList<Product>)request.getAttribute("plist11");
	ArrayList<Product> plist12 = (ArrayList<Product>)request.getAttribute("plist12");
	
	ArrayList<Product> dlist = (ArrayList<Product>)request.getAttribute("dlist");
	ArrayList<Product> mlist = (ArrayList<Product>)request.getAttribute("mlist");
	ArrayList<Product> slist = (ArrayList<Product>)request.getAttribute("slist");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="resource/image/logo2.png" rel="shortcut icon" type="image/x-icon">
<link rel="shortcut icon" href="resource/logo/bichon-frise.png">
<style>
	.outer {
        height: 2900px;
        width: 1180px;
        position: relative;
        z-index: 0;
        margin-right: 0px;
	}

         /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
        /* 바디 시작 */

        .body{
            /* background-color: skyblue; */
            height: 100%;
            width: 100%;
        }

        /* 상단 메인 배너 */
        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */


        .recommend_img{
            width: 1180px;
            margin-left: 370px;
        }

        .recommend_categoryRank_img{
            width: 1180px;
            margin-left: 370px;
        }

        .custom-carousel-buttons {
            position: absolute;
            bottom: 15px;
            left: 30%;
            display: flex;
            margin-bottom: 60px;
        }

        .custom-carousel-buttons .button-image {
            width: 30px;
            height: 30px;
            margin: 0 20px;
            cursor: pointer;
            /* border-radius: 10px; */
        }

        .button-image>img:hover{
            border: 1px solid black;
        }

        .container {
            width: 100%;
            margin: 0px;
            padding: 0;
        }
        
        .carousel-inner {
            width: 1920px;
            overflow: hidden;
        }
        
        /* 잘보여라@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
        /* 추천상품 */

        .div_img{
            width: 20%;
            height: 390px;
            float: left;
            padding-left: 10px;
            padding-right: 10px;
            padding-bottom: 30px;
        }

        .div_categoryRank_img{
            width: 16.5%;
            height: 390px;
            float: left;
            padding-left: 10px;
            padding-right: 10px;
            padding-bottom: 30px;
        }

        .div_img img {
            border-radius: 10px;
            height: 307px;
        }

        .div_categoryRank_img img{
            border-radius: 10px;
            height: 240px;
        }

        a:hover{
            text-decoration-line: none;
        }

        .caption{
            margin-top: 10px;
        }
        .caption1{
            color: black;
            font-weight: bold;
            font-size: 15px;
        }

        .caption2{
            color: gray;
            font-size: 12px;
        }

        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
        /* 사이드바 */
        .sticky_outer {
            width: 160px;
            height: 1000px;
            float: left;
        }

        /* 배너 이미지 사이즈조정 */
        .sidebar {  
        width: 80%;
        height: 450px;
        }

        .sidebar {
        position: -webkit-sticky;
        position: sticky;
        top: 0;
        }





        /* 바디 끝 */
        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
       

</style>
</head>
<body>
	<%@ include file = "/views/common/header.jsp" %>
	
	<div class="outer">

        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Slides -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="resource/이미지자료/류지완 샘플이미지/홈화면 메인배너 이미지 샘플.jpg" alt="Slide 1" class="carousel-img">
                    </div>
                    <div class="carousel-item">
                        <img src="resource/이미지자료/류지완 샘플이미지/홈화면 메인배너 이미지 샘플.jpg" alt="Slide 2" class="carousel-img">
                    </div>
                    <div class="carousel-item">
                      <img src="resource/이미지자료/류지완 샘플이미지/홈화면 메인배너 이미지 샘플.jpg" alt="Slide 3" class="carousel-img">
                    </div>
                    <div class="carousel-item">
                        <img src="resource/이미지자료/류지완 샘플이미지/홈화면 메인배너 이미지 샘플.jpg" alt="Slide 4" class="carousel-img">
                    </div>
                    <div class="carousel-item">
                        <img src="resource/이미지자료/류지완 샘플이미지/홈화면 메인배너 이미지 샘플.jpg" alt="Slide 5" class="carousel-img">
                    </div>
                  </div>
                  
                  <!-- Custom Carousel Buttons -->
                  <div class="custom-carousel-buttons">
                    <div class="button-image" onclick="moveToSlide(0)">
                        <img src="resource/이미지자료/류지완 샘플이미지/홈화면 메인배너 이미지 샘플 2.jpg" alt="Button Image 1" style="border-radius: 10px;">
                    </div>
                    <div class="button-image" onclick="moveToSlide(1)">
                      <img src="resource/이미지자료/류지완 샘플이미지/홈화면 메인배너 이미지 샘플 2.jpg" alt="Button Image 2" style="border-radius: 10px;">
                    </div>
                    <div class="button-image" onclick="moveToSlide(2)">
                      <img src="resource/이미지자료/류지완 샘플이미지/홈화면 메인배너 이미지 샘플 2.jpg" alt="Button Image 3" style="border-radius: 10px;">
                    </div>
                    <div class="button-image" onclick="moveToSlide(3)">
                        <img src="resource/이미지자료/류지완 샘플이미지/홈화면 메인배너 이미지 샘플 2.jpg" alt="Button Image 4" style="border-radius: 10px;">
                    </div>
                    <div class="button-image" onclick="moveToSlide(4)">
                        <img src="resource/이미지자료/류지완 샘플이미지/홈화면 메인배너 이미지 샘플 2.jpg" alt="Button Image 5" style="border-radius: 10px;">
                    </div>
                  </div>
                  <br>
                  
                </div>
            </div>
              
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            <script>
                function moveToSlide(slideIndex) {
                    $('#myCarousel').carousel(slideIndex);
                }
            </script>
	<% if( loginMember == null && plist == null){%>


	<%}else if(loginMember == null && plist != null){ %>
		<!-- plist 만 조회되서 넘어온 상태 (로그인 전)  -->

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 로그인 전 전체 랭킹 추천 -->
    <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">전체 랭킹 딱대</span>
        <br>
        <hr>
		<% for(int i=0; i<plist.size(); i++) {%>
        <div class="div_img">
            <a href="<%= contextPath %>/detail.pr?pno=<%= plist.get(i).getProductNo() %>">
                <img src="<%= ilist.get(i).getImagePath() %>/<%= ilist.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1"><%= plist.get(i).getProductTitle() %></p>
                    <p class="caption2"><%= plist.get(i).getStartPeriod() %> ~ <%= plist.get(i).getEndPeriod() %></p>
                </div>
            </a>
        </div>
        
		<% } %>
        
            <br><br>
            <img src="resource/이미지자료/류지완 샘플이미지/페이딱.png" style="width: 100%;">
            <br><br><br>

        </div>
        <% }else if(loginMember != null){ %> <!--  로그인 했을 때 -->
        
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 로그인 후 각자의 관심사 랭킹 추천 -->
	    <div class="recommend_categoryRank_img">
			<form action="<%= contextPath %>/crank.pr?uno=<%= loginMember.getUserNo() %>" id="enroll-form" method="post">
			<input type="hidden" name="userNo" value="<%= loginMember.getUserNo()%>">
	        <span style="font-weight: bold; font-size: 25px;">관심사 랭킹 딱대</span>
	        <br>
	        <hr>
	        <% if(dlist != null){ %>
				<% for(int i=0; i<dlist.size(); i++) {%>
		        <div class="div_categoryRank_img">
		            <a href="<%= contextPath %>/detail.pr?pno=<%= dlist.get(i).getProductNo() %>">
		                <img src="<%= dlist.get(i).getImagePath() %>/<%= dlist.get(i).getPosterName() %>" alt="Fjowwwrds" style="width:100%">
		                <div class="caption">
		                    <p class="caption1"><%= dlist.get(i).getProductTitle() %></p>
		                    <p class="caption2"><%= dlist.get(i).getStartPeriod() %> ~ <%= dlist.get(i).getEndPeriod() %></p>
		                </div>
		            </a>
		        </div>
	          
				<% } %>
				<% } %>
				
				
				<% if(mlist != null){ %>
				<% for(int i=0; i<mlist.size(); i++) {%>
		        <div class="div_categoryRank_img">
		            <a href="<%= contextPath %>/detail.pr?pno=<%= mlist.get(i).getProductNo() %>">
		                <img src="<%= mlist.get(i).getImagePath() %>/<%= mlist.get(i).getPosterName() %>" alt="Fjowwwrds" style="width:100%">
		                <div class="caption">
		                    <p class="caption1"><%= mlist.get(i).getProductTitle() %></p>
		                    <p class="caption2"><%= mlist.get(i).getStartPeriod() %> ~ <%= mlist.get(i).getEndPeriod() %></p>
		                </div>
		            </a>
		        </div>
	          
				<% } %>
				<% } %>
				
				
				<% if(slist != null){ %>
				<% for(int i=0; i<slist.size(); i++) {%>
		        <div class="div_categoryRank_img">
		            <a href="<%= contextPath %>/detail.pr?pno=<%= slist.get(i).getProductNo() %>">
		                <img src="<%= slist.get(i).getImagePath() %>/<%= slist.get(i).getPosterName() %>" alt="Fjowwwrds" style="width:100%">
		                <div class="caption">
		                    <p class="caption1"><%= slist.get(i).getProductTitle() %></p>
		                    <p class="caption2"><%= slist.get(i).getStartPeriod() %> ~ <%= slist.get(i).getEndPeriod() %></p>
		                </div>
		            </a>
		        </div>
	          
				<% } %>
				<% } %>
			</form>
	
	            <br><br>
	            <img src="resource/이미지자료/류지완 샘플이미지/페이딱.png" style="width: 100%;">
	            <br><br><br>    
	
	        </div>
        <% } %>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 로맨스 영화 랭킹 5개씩 추천 -->
    <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">로맨스 영화 랭킹 딱대</span>
        <br>
        <hr>
        	<% if((loginMember == null || loginMember != null) && plist1 != null){ %>
				<% for(int i=0; i<plist1.size(); i++) {%>
			        <div class="div_img">
			            <a href="<%= contextPath %>/detail.pr?pno=<%= plist1.get(i).getProductNo() %>">
			                <img src="<%= plist1.get(i).getImagePath() %>/<%= plist1.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
			                <div class="caption">
			                    <p class="caption1"><%= plist1.get(i).getProductTitle() %></p>
			                    <p class="caption2"><%= plist1.get(i).getStartPeriod() %> ~ <%= plist1.get(i).getEndPeriod() %></p>
			                </div>
			            </a>
			        </div>
		        
				<% } %>
			<% } %>
		

        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 공포/스릴러 영화 랭킹 5개씩 추천 -->
        <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">공포/스릴러 영화 랭킹 딱대</span>
        <br>
        <hr>
        	<% if((loginMember == null || loginMember != null) && plist2 != null){ %>
				<% for(int i=0; i<plist2.size(); i++) {%>
			        <div class="div_img">
			            <a href="<%= contextPath %>/detail.pr?pno=<%= plist2.get(i).getProductNo() %>">
			                <img src="<%= plist2.get(i).getImagePath() %>/<%= plist2.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
			                <div class="caption">
			                    <p class="caption1"><%= plist2.get(i).getProductTitle() %></p>
			                    <p class="caption2"><%= plist2.get(i).getStartPeriod() %> ~ <%= plist2.get(i).getEndPeriod() %></p>
			                </div>
			            </a>
			        </div>
		        
				<% } %>
			<% } %>
		

        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 코미디 영화 랭킹 5개씩 추천 -->
            <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">코미디 영화 랭킹 딱대</span>
        <br>
        <hr>
        	<% if((loginMember == null || loginMember != null) && plist3 != null){ %>
				<% for(int i=0; i<plist3.size(); i++) {%>
			        <div class="div_img">
			            <a href="<%= contextPath %>/detail.pr?pno=<%= plist3.get(i).getProductNo() %>">
			                <img src="<%= plist3.get(i).getImagePath() %>/<%= plist3.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
			                <div class="caption">
			                    <p class="caption1"><%= plist3.get(i).getProductTitle() %></p>
			                    <p class="caption2"><%= plist3.get(i).getStartPeriod() %> ~ <%= plist3.get(i).getEndPeriod() %></p>
			                </div>
			            </a>
			        </div>
		        
				<% } %>
			<% } %>
		

        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 액션 영화 랭킹 5개씩 추천 -->
            <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">액션 영화 랭킹 딱대</span>
        <br>
        <hr>
        	<% if((loginMember == null || loginMember != null) && plist4 != null){ %>
				<% for(int i=0; i<plist4.size(); i++) {%>
			        <div class="div_img">
			            <a href="<%= contextPath %>/detail.pr?pno=<%= plist4.get(i).getProductNo() %>">
			                <img src="<%= plist4.get(i).getImagePath() %>/<%= plist4.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
			                <div class="caption">
			                    <p class="caption1"><%= plist4.get(i).getProductTitle() %></p>
			                    <p class="caption2"><%= plist4.get(i).getStartPeriod() %> ~ <%= plist4.get(i).getEndPeriod() %></p>
			                </div>
			            </a>
			        </div>
		        
				<% } %>
			<% } %>
		

        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 그림 전시 랭킹 5개씩 추천 -->
            <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">그림 전시 랭킹 딱대</span>
        <br>
        <hr>
        	<% if((loginMember == null || loginMember != null) && plist5 != null){ %>
				<% for(int i=0; i<plist5.size(); i++) {%>
			        <div class="div_img">
			            <a href="<%= contextPath %>/detail.pr?pno=<%= plist5.get(i).getProductNo() %>">
			                <img src="<%= plist5.get(i).getImagePath() %>/<%= plist5.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
			                <div class="caption">
			                    <p class="caption1"><%= plist5.get(i).getProductTitle() %></p>
			                    <p class="caption2"><%= plist5.get(i).getStartPeriod() %> ~ <%= plist5.get(i).getEndPeriod() %></p>
			                </div>
			            </a>
			        </div>
		        
				<% } %>
			<% } %>
		

        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 작품 전시 랭킹 5개씩 추천 -->
            <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">작품 전시 랭킹 딱대</span>
        <br>
        <hr>
        	<% if((loginMember == null || loginMember != null) && plist6 != null){ %>
				<% for(int i=0; i<plist6.size(); i++) {%>
			        <div class="div_img">
			            <a href="<%= contextPath %>/detail.pr?pno=<%= plist6.get(i).getProductNo() %>">
			                <img src="<%= plist6.get(i).getImagePath() %>/<%= plist6.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
			                <div class="caption">
			                    <p class="caption1"><%= plist6.get(i).getProductTitle() %></p>
			                    <p class="caption2"><%= plist6.get(i).getStartPeriod() %> ~ <%= plist6.get(i).getEndPeriod() %></p>
			                </div>
			            </a>
			        </div>
		        
				<% } %>
			<% } %>
		

        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 사진 전시 랭킹 5개씩 추천 -->
            <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">사진 전시 랭킹 딱대</span>
        <br>
        <hr>
        	<% if((loginMember == null || loginMember != null) && plist7 != null){ %>
				<% for(int i=0; i<plist7.size(); i++) {%>
			        <div class="div_img">
			            <a href="<%= contextPath %>/detail.pr?pno=<%= plist7.get(i).getProductNo() %>">
			                <img src="<%= plist7.get(i).getImagePath() %>/<%= plist7.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
			                <div class="caption">
			                    <p class="caption1"><%= plist7.get(i).getProductTitle() %></p>
			                    <p class="caption2"><%= plist7.get(i).getStartPeriod() %> ~ <%= plist7.get(i).getEndPeriod() %></p>
			                </div>
			            </a>
			        </div>
		        
				<% } %>
			<% } %>
		

        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 체험 전시 랭킹 5개씩 추천 -->
            <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">체험 전시 랭킹 딱대</span>
        <br>
        <hr>
        	<% if((loginMember == null || loginMember != null) && plist8 != null){ %>
				<% for(int i=0; i<plist8.size(); i++) {%>
			        <div class="div_img">
			            <a href="<%= contextPath %>/detail.pr?pno=<%= plist8.get(i).getProductNo() %>">
			                <img src="<%= plist8.get(i).getImagePath() %>/<%= plist8.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
			                <div class="caption">
			                    <p class="caption1"><%= plist8.get(i).getProductTitle() %></p>
			                    <p class="caption2"><%= plist8.get(i).getStartPeriod() %> ~ <%= plist8.get(i).getEndPeriod() %></p>
			                </div>
			            </a>
			        </div>
		        
				<% } %>
			<% } %>
		

        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 뮤지컬 공연 랭킹 5개씩 추천 -->
            <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">뮤지컬 공연 랭킹 딱대</span>
        <br>
        <hr>
        	<% if((loginMember == null || loginMember != null) && plist9 != null){ %>
				<% for(int i=0; i<plist9.size(); i++) {%>
			        <div class="div_img">
			            <a href="<%= contextPath %>/detail.pr?pno=<%= plist9.get(i).getProductNo() %>">
			                <img src="<%= plist9.get(i).getImagePath() %>/<%= plist9.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
			                <div class="caption">
			                    <p class="caption1"><%= plist9.get(i).getProductTitle() %></p>
			                    <p class="caption2"><%= plist9.get(i).getStartPeriod() %> ~ <%= plist9.get(i).getEndPeriod() %></p>
			                </div>
			            </a>
			        </div>
		        
				<% } %>
			<% } %>
		

        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 연극 공연 랭킹 5개씩 추천 -->
            <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">연극 공연 랭킹 딱대</span>
        <br>
        <hr>
        	<% if((loginMember == null || loginMember != null) && plist10 != null){ %>
				<% for(int i=0; i<plist10.size(); i++) {%>
			        <div class="div_img">
			            <a href="<%= contextPath %>/detail.pr?pno=<%= plist10.get(i).getProductNo() %>">
			                <img src="<%= plist10.get(i).getImagePath() %>/<%= plist10.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
			                <div class="caption">
			                    <p class="caption1"><%= plist10.get(i).getProductTitle() %></p>
			                    <p class="caption2"><%= plist10.get(i).getStartPeriod() %> ~ <%= plist10.get(i).getEndPeriod() %></p>
			                </div>
			            </a>
			        </div>
		        
				<% } %>
			<% } %>
		

        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 클래식 공연 랭킹 5개씩 추천 -->
        <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">클래식 공연 랭킹 딱대</span>
        <br>
        <hr>
        	<% if((loginMember == null || loginMember != null) && plist11 != null){ %>
				<% for(int i=0; i<plist11.size(); i++) {%>
			        <div class="div_img">
			            <a href="<%= contextPath %>/detail.pr?pno=<%= plist11.get(i).getProductNo() %>">
			                <img src="<%= plist11.get(i).getImagePath() %>/<%= plist11.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
			                <div class="caption">
			                    <p class="caption1"><%= plist11.get(i).getProductTitle() %></p>
			                    <p class="caption2"><%= plist11.get(i).getStartPeriod() %> ~ <%= plist11.get(i).getEndPeriod() %></p>
			                </div>
			            </a>
			        </div>
		        
				<% } %>
			<% } %>
		

        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 전체 상품 중 콘서트 공연 랭킹 5개씩 추천 -->
        <div class="recommend_img">

	        <span style="font-weight: bold; font-size: 25px;">콘서트 공연 랭킹 딱대</span>
	        <br>
	        <hr>
	        	<% if((loginMember == null || loginMember != null) && plist12 != null){ %>
					<% for(int i=0; i<plist12.size(); i++) {%>
				        <div class="div_img">
				            <a href="<%= contextPath %>/detail.pr?pno=<%= plist12.get(i).getProductNo() %>">
				                <img src="<%= plist12.get(i).getImagePath() %>/<%= plist12.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
				                <div class="caption">
				                    <p class="caption1"><%= plist12.get(i).getProductTitle() %></p>
				                    <p class="caption2"><%= plist12.get(i).getStartPeriod() %> ~ <%= plist12.get(i).getEndPeriod() %></p>
				                </div>
				            </a>
				        </div>
			        
					<% } %>
				<% } %>
			
	
	        <br><br>

        </div>	

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
<!-- 사이드바 -->
<!-- <div class="sticky_outer">
    <img src="resource/이미지자료/류지완 샘플이미지/새로배너.PNG" class="sidebar">
</div>
<br><br>  -->


<br><br>
	<script>
		<% if(loginMember != null) { %>
	
		const userNo = <%=loginMember.getUserNo()%>
		<% } %>
		
		
		
         $(function() {
            // 사이트 접속시 로그인맴버 == null, plist == null 
            // 로긴 널이면 plist 불러오는 trank 보내부루
            // plist 받아다가 전처랭킹 조회됨
            <% if(loginMember == null) { %>
           	 	<% if(plist == null){ %>
                    window.location.href = '<%= request.getContextPath() %>/trank.pr';
            	<% } else{ %>
            	<% } %>
           	 
            	
          	<% }else{ %>
          		 <% if(dlist == null){ %> // 아직 불러온적 없을때	            	
                  location.href = '<%= contextPath %>/crank.pr?userNo=' + userNo;
            	 <% } %>

            <% } %>
            
            <% if(plist1 == null){ %>
        	window.location.href = '<%= request.getContextPath() %>/trank.pr';
    	<% } else{ %>
    	<% } %>
           
         });
         

	</script>
	
	
	<%@ include file = "/views/common/footer.jsp" %>
</body>
</html>