<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Product> rlist = (ArrayList<Product>)request.getAttribute("rlist");
	ArrayList<Product> rtlist = (ArrayList<Product>)request.getAttribute("rtlist");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<link href="resource/image/logo2.png" rel="shortcut icon" type="image/x-icon">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
	.page_heading{
            /* border: 1px solid red; */
            /* margin: auto; */
            width: 1120px;
            height: 65px;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        .page_heading>*{
            float: left;
            height: 100%;
            box-sizing: border-box;
            /* border: 1px solid red; */
        }
        .page_title{
            /* border: 2px solid pink; */
            width: 10%;
            flex: none;
            background: none;
            font-size: 40px;
            font-weight: 700;
            line-height: 40px;
            letter-spacing: -0.05em;
            color: #242428;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        /* 바디 기본 */
        /* 버튼 */
        .common_tab_list{
            width: 500px;
            /* border: 1px solid red; */
        }
        .common_tab_list *{
        float: left;
        list-style: none;
        }
        .common_tab.type_underline, .common_tab_btn {
        position: relative;
        padding: 7px 10px;
        min-height: 40px;
        font-size: 20px;
        font-weight: 500;
        line-height: 26px;
        color: #878d95;
        background-color: white;
        font-weight: 800;
        border: 0;
        /* border: 1px solid red; */
        }
        .common_tab.type_underline, .common_tab_btn[aria-selected="true"]::before {
        position: absolute;
        bottom: 4px;
        left: 10px;
        right: 10px;
        height: 2px;
        background: #242428;
        content: '';
        }
        .common_tab_btn[aria-selected="false"]:hover{
            color: black;
            cursor: pointer;
            font-size: 22px;
        }
        .common_tab.type_underline, .common_tab_btn[aria-selected="true"] {
         color: #242428;
        }

        .common_tab_area{
            width: 25%;
            height: 70%;
            margin-top: 20px;
            margin-left: 750px;
            /* border: 1px solid red; */
        }
        /* 버튼 끝 */
        /* 바디 메인 */
        
        /* 윤관현_시작 */
        .yoontarget {
            /* border: 1px solid red; */
            /* background-color: lightgray; */
            height: 100%;
            width: 63%;
            margin: auto;
        }
        .yoontarget>div {
            /* border: 1px solid red; */
            width: 100%;
        }
        #demo {
            height: 15%;
            /* border: 1px solid blue; */
        }
        .carousel-inner {
            width: 100%;
            height: 500px;
        }
        .carousel-item {
            width: 100%;
            height: 100%;
        }
        .carousel-item>img {
            width: 100%;
            height: 100%;
        }

        .col-md-4{
            width: 25%;
            height: 530px;
        }
        .yoontarget img{
            border-radius: 20px;
            border: 1px solid rgb(156, 152, 152);
        }

        .col-md-4 a{
            height: 100px;
        }

        .col-md-4 img {
            height: 400px;
        }

        .thumbnail{
            height: 500px;
        }

        .movieHead {
            font-weight: bold;
            font-size: 25px;
            /* border: 1px solid red; */
        }
        .movieHead>a {
            color: black;
            
        }
        .movieHead>a:hover {
            color: darkgray;
        }
        #ranking {
            padding-left: 10px;
        }

        .caption {
            height: 100px;
        }
        .caption>p {
            font-size: 17px;
            color: black;
            font-weight: bold;
            margin: 10px;
            height: 15%;
        }
        .caption>pre {
            font-size: 13px;
            color: rgb(50, 50, 50);
            height: 40%;
            padding-left: 10px;
        }

        .col-md-5 {
            width: 20%;
            height: 400px;
        }
        .col-md-5>.thumbnail {
            height: 100%;
        }
        .col-md-5 a{
            height: 100px;
        }
        .col-md-5>div {
            height: 400px;
        }
        .col-md-5 img {
            height: 300px;
        }

        #ad {
            border: 1px solid rgb(156, 152, 152);
            height: 330px;
            border-radius: 20px;
        }
        #ad img {
            box-sizing: border-box;
            width: 100%;
            height: 100%;
        }
        img {
            cursor: pointer;
        }


        /* 윤관현_끝 */

        /* 바디 메인 */

        /* 바디 끝 */
</style>
</head>
<body>
	<%@ include file = "../common/header.jsp" %>
	
	<!-- 내용 넣을 수 있는 구간 시작 -->
                
                <!-- 윤관현_시작 -->
                <div class="yoontarget">

                    <div class="page_heading">
                        <h1 class="page_title">
                            영화
                        </h1>
                        <div class="common_tab_area">
    
                            <ul class="common_tab_list" role="tablist">
                                    <li class="common_tab_item" role="none">
                                        <button type="button" class="common_tab_btn" role="tab" aria-selected="true">전체</button>
                                    </li>
                                    <li class="common_tab_item" role="none">
                                        <button type="button" class="common_tab_btn" role="tab" aria-selected="false">로맨스</button>
                                        </li>
                                    <li class="common_tab_item" role="none">
                                        <button type="button" class="common_tab_btn" role="tab" aria-selected="false">공포</button>
                                        </li>
                                    <li class="common_tab_item" role="none">
                                        <button type="button" class="common_tab_btn" role="tab" aria-selected="false">코미디</button>
                                    </li>
                                    <li class="common_tab_item" role="none">
                                        <button type="button" class="common_tab_btn" role="tab" aria-selected="false">액션</button>
                                    </li>
                            </ul>
                        </div>
                               
                    </div> <!-- 버튼 끝 -->
                    
                    <!-- 메인배너 시작 -->
                    <div id="demo" class="carousel slide" data-bs-ride="carousel">
                        
                        <!-- 하단 버튼 시작 -->
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                            <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                            <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                        </div>
                        <!-- //하단 버튼 끝 -->
                        
                        <!-- 이미지 시작 -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="resource/이미지자료/02_영화/공포,스릴러영화/콘크리트유토피아_wide.png" class="d-block">
                            </div>
                            <div class="carousel-item">
                                <img src="resource/이미지자료/02_영화/액션영화/밀수_wide.jpg" class="d-block">
                            </div>
                            <div class="carousel-item">
                                <img src="resource/이미지자료/02_영화/액션영화/비공식작전_wide.jpg" class="d-block">
                            </div>
                        </div>

                        <!-- <script>
                            function test() {

                                location.href = "#";

                            };
                        </script> -->

                        <!-- //이미지 끝 -->
                        
                        <!-- 좌우 버튼 시작 -->
                        <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </button>
                        <!-- //좌우 버튼 끝 -->
                        
                    </div>
                    <br><br>
                    <!-- //메인배너 끝 -->
                    <!-- //랭킹 끝 -->

                    <!-- 상영 예정작 시작 -->
                    <div class="container">

                        <!-- 전체 영화 헤드 태그 시작 -->
                        <h1 class="movieHead">
                            <a href="">상영 예정작</a>
                        </h1>
                        <hr>
                        <!-- //전체 영화 헤드 태그 끝 -->

                        <!-- 전체 포스터 시작 -->
                        <div class="row">
                        	
                        	<% for(int i=0; i<rlist.size(); i++){ %>
							<!-- 포스터, 설명글 시작 -->
							<div class="col-md-5">
								<div class="thumbnail">
								<a href="<%= contextPath %>/detail.pr?pno=<%= rlist.get(i).getProductNo() %>">
									<img src="<%=rlist.get(i).getImagePath() %>/<%= rlist.get(i).getPosterName() %>" alt="Lights" style="width:100%">
									<div class="caption">
									<p><%=rlist.get(i).getProductTitle() %></p>
									<pre><%= rlist.get(i).getStartPeriod() %>~<%= rlist.get(i).getEndPeriod() %></pre>
									</div>
								</a>
								</div>
							</div>
							<!-- //포스터, 설명글 끝 -->
							<% } %>
							
						</div>
						<!-- //전체 포스터 끝 -->
                    </div>      
                    <!-- //상영 예정작 끝 -->
                    
                    <!-- 현재 상영작 시작 -->
                    <div class="container">

                        <!-- 전체 영화 헤드 태그 시작 -->
                        <h1 class="movieHead">
                            <a href="">현재 상영작</a>
                        </h1>
                        <hr>
                        <!-- //전체 영화 헤드 태그 끝 -->

                        <!-- 전체 포스터 시작 -->
                        <div class="row">
                        
                        	<% for(int i=0; i<rtlist.size(); i++){ %>
							<!-- 포스터, 설명글  시작 -->
							<div class="col-md-4">
								<div class="thumbnail">
								<a href="<%= contextPath %>/detail.pr?pno=<%= rtlist.get(i).getProductNo() %>">
									<img src="<%= rtlist.get(i).getImagePath() %>/<%= rtlist.get(i).getPosterName() %>" alt="Lights" style="width:100%">
									<div class="caption">
									<p><%= rtlist.get(i).getProductTitle() %></p>
									<pre><%= rtlist.get(i).getStartPeriod() %>~<%= rtlist.get(i).getEndPeriod() %></pre>
									</div>
								</a>
								</div>
							</div>
							<!-- //포스터, 설명글  끝 -->
							<% } %>
							
							

                        </div>
                        <!-- //전체 포스터 끝 -->

                    </div>
                    <!-- //현재 상영작 끝 -->

                    <!-- 광고 배너 시작 -->
                    <div id="ad">
                        <a href="#"><img src="resource/이미지자료/광고배너.jpg"></a>
                    </div>
                    <!-- //광고 배너 끝 -->

                </div>
                <!-- //윤관현 끝 -->
	
	<%@ include file = "../common/footer.jsp" %>
</body>
</html>