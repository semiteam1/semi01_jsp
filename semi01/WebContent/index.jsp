<%@page import="com.kh.semi01.product.model.vo.ProductIMG"%>
<%@page import="com.kh.semi01.product.model.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<ProductIMG> ilist = (ArrayList<ProductIMG>)request.getAttribute("ilist");
	ArrayList<Product> plist = (ArrayList<Product>)request.getAttribute("plist");
	
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

        .div_img img, .div_categoryRank_img img {
            border-radius: 10px;
            height: 307px;
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

	 <% if(loginMember == null){ %>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 로그인 전 전체 랭킹 추천 -->
    <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">전체 랭킹 딱대</span>
        <br>
        <hr>
		<% if(plist != null){ %>
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
		<% } %>
        
            <br><br>
            <img src="resource/이미지자료/류지완 샘플이미지/페이딱.png" style="width: 100%;">
            <br><br><br>

        </div>
        <% }else if(loginMember != null){ %>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 로그인 후 각자의 관심사 랭킹 추천 -->
    <div class="recommend_categoryRank_img">
		<form action="<%= contextPath %>/crank.pr?uno=<%= loginMember.getUserNo() %>" id="enroll-form" method="post">
		<input type="hidden" name="userNo" value="<%= loginMember.getUserNo()%>">
        <span style="font-weight: bold; font-size: 25px;">관심사 랭킹 딱대</span>
        <br>
        <hr>
		
		<% if(plist != null){ %>
			<% for(int i=0; i<dlist.size(); i++) {%>
	        <div class="div_categoryRank_img">
	            <a href="<%= contextPath %>/detail.pr?pno=<%= dlist.get(i).getProductNo() %>">
	                <img src="<%= dlist.get(i).getImagePath() %>/<%= dlist.get(i).getPosterName() %>" alt="Fjords" style="width:100%">
	                <div class="caption">
	                    <p class="caption1"><%= dlist.get(i).getProductTitle() %></p>
	                    <p class="caption2"><%= dlist.get(i).getStartPeriod() %> ~ <%= dlist.get(i).getEndPeriod() %></p>
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
<!-- 관심사 랭킹 추천 -->
    <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">관심사 랭킹 딱대</span>
        <br>
        <hr>
        
        
        <div class="div_img">
            <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
            </a>
        </div>
        
        
        <div class="div_img">
            <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
            </a>
        </div>
        
        
        <div class="div_img">
            <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
                </a>
            </div>
        
            <div class="div_img">
                <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
                </a>
            </div>
        
            <div class="div_img">
                <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
                </a>
            </div>
            <br><br>

        </div>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 관심사 랭킹 추천 -->
    <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">관심사 랭킹 딱대</span>
        <br>
        <hr>
        
        
        <div class="div_img">
            <a href="#"">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
            </a>
        </div>
        
        
        <div class="div_img">
            <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
            </a>
        </div>
        
        
        <div class="div_img">
            <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
                </a>
            </div>
        
            <div class="div_img">
                <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
                </a>
            </div>
        
            <div class="div_img">
                <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
                </a>
            </div>
            <br><br>

        </div>

        <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 관심사 랭킹 추천 -->
    <div class="recommend_img">

        <span style="font-weight: bold; font-size: 25px;">관심사 랭킹 딱대</span>
        <br>
        <hr>
        
        
        <div class="div_img">
            <a href="#"">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
            </a>
        </div>
        
        
        <div class="div_img">
            <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
            </a>
        </div>
        
        
        <div class="div_img">
            <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
                </a>
            </div>
        
            <div class="div_img">
                <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
                </a>
            </div>
        
            <div class="div_img">
                <a href="#">
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
                <div class="caption">
                    <p class="caption1">제목</p>
                    <p class="caption2">시작기간 ~ 끝기간</p>
                </div>
                </a>
            </div>
           

            <img src="resource/이미지자료/광고배너.jpg" style="width: 100%;">
        </div>

        
        
    </div>
    

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
<!-- 사이드바 -->
<!-- <div class="sticky_outer">
    <img src="resource/이미지자료/류지완 샘플이미지/새로배너.PNG" class="sidebar">
</div>
<br><br>  -->


        </div>
        

</div>
<br><br>
	<script>

         $(function() {
             
             
             
             if(<%= loginMember %> == null){
            	 if(<%=plist%>== null){
                     window.location.href = '<%= request.getContextPath() %>/trank.pr';
                 }
            	 
           	
         });
	</script>
	
	<%@ include file = "/views/common/footer.jsp" %>
</body>
</html>