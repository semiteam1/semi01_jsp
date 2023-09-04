<%@page import="com.kh.semi01.product.model.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String ctype = (String)request.getAttribute("ctype");

	ArrayList<Product> mlist = (ArrayList<Product>)request.getAttribute("mlist");
	ArrayList<Product> mtlist = (ArrayList<Product>)request.getAttribute("mtlist");
	
	System.out.println("movieMain" + ctype);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<link href="resource/image/logo2.png" rel="shortcut icon"
	type="image/x-icon">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
.page_heading {
	/* border: 1px solid red; */
	/* margin: auto; */
	width: 1120px;
	height: 65px;
	margin-top: 20px;
	margin-bottom: 20px;
}

.page_heading>* {
	float: left;
	height: 100%;
	box-sizing: border-box;
	/* border: 1px solid red; */
}

.page_title {
	/* border: 2px solid pink; */
	width: 20%;
	flex: none;
	background: none;
	font-size: 40px;
	font-weight: 700;
	line-height: 40px;
	letter-spacing: -0.05em;
	color: #242428;
	display: flex;
	justify-content: left;
	align-items: center;
}
/* 바디 기본 */
/* 버튼 */
.common_tab_list {
	width: 500px;
	/* border: 1px solid red; */
}

.common_tab_list * {
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

.common_tab.type_underline, .common_tab_btn[aria-selected="true"]::before
	{
	position: absolute;
	bottom: 4px;
	left: 10px;
	right: 10px;
	height: 2px;
	background: #242428;
	content: '';
}

.common_tab_btn[aria-selected="false"]:hover {
	color: black;
	cursor: pointer;
	font-size: 22px;
}

.common_tab.type_underline, .common_tab_btn[aria-selected="true"] {
	color: #242428;
}

.common_tab_area {
	width: 40%;
	height: 70%;
	margin-top: 20px;
	float: right;
	/* border: 1px solid red; */
}

.common_tab_area * {
	float: right;
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
	height: 400px;
}

.carousel-item {
	width: 100%;
	height: 100%;
}

.carousel-item>img {
	width: 100%;
	height: 100%;
}

.col-md-4 {
	width: 25%;
	height: 530px;
}

.yoontarget img {
	border-radius: 20px;
	border: 1px solid rgb(156, 152, 152);
}

.col-md-4 a {
	height: 100px;
}

.col-md-4 img {
	height: 400px;
}

.thumbnail {
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

.col-md-5 a {
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
	<%@ include file="../common/header.jsp"%>

	<!-- 내용 넣을 수 있는 구간 시작 -->

	<!-- 윤관현_시작 -->
	<div class="yoontarget">

		<div class="page_heading">
			<h1 class="page_title">
				<%= ctype %>
			</h1>
			<div class="common_tab_area">
				<% if(ctype.equals("영화") || ctype.equals("로맨스") || ctype.equals("공포스릴러") || ctype.equals("코미디") || ctype.equals("액션")){  %>
				<ul class="common_tab_list" role="tablist">
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=액션" id="액션"
						class="common_tab_btn" role="tab" aria-selected="false">액션</a></li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=코미디" id="코미디"
						class="common_tab_btn" role="tab" aria-selected="false">코미디</a></li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=공포스릴러" id="공포스릴러"
						class="common_tab_btn" role="tab" aria-selected="false">공포/스릴러</a>
					</li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=로맨스" id="로맨스"
						class="common_tab_btn" role="tab" aria-selected="false">로맨스</a></li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/cmain.pr?ctype=영화" id="영화"
						class="common_tab_btn" role="tab" aria-selected="true">전체</a></li>
				</ul>
				<% }else if(ctype.equals("전시") || ctype.equals("그림전시") || ctype.equals("사진전시") || ctype.equals("작품전시") || ctype.equals("체험전시")){ %>
				<ul class="common_tab_list" role="tablist">
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=체험전시" id="체험전시"
						class="common_tab_btn" role="tab" aria-selected="false">체험전시</a></li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=작품전시" id="작품전시"
						class="common_tab_btn" role="tab" aria-selected="false">작품전시</a></li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=사진전시" id="사진전시"
						class="common_tab_btn" role="tab" aria-selected="false">사진전시</a></li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=그림전시" id="그림전시"
						class="common_tab_btn" role="tab" aria-selected="false">그림전시</a></li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/cmain.pr?ctype=전시" id="전시"
						class="common_tab_btn" role="tab" aria-selected="false">전체</a></li>
				</ul>
				<% }else if(ctype.equals("공연")|| ctype.equals("뮤지컬") || ctype.equals("연극") || ctype.equals("클래식") || ctype.equals("콘서트") ){ %>
				<ul class="common_tab_list" role="tablist">
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=콘서트" id="콘서트"
						class="common_tab_btn" role="tab" aria-selected="false">콘서트</a></li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=클래식" id="클래식"
						class="common_tab_btn" role="tab" aria-selected="false">클래식</a></li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=연극" id="연극"
						class="common_tab_btn" role="tab" aria-selected="false">연극</a></li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/rmovie.pr?ctype=뮤지컬" id="뮤지컬"
						class="common_tab_btn" role="tab" aria-selected="false">뮤지컬</a></li>
					<li class="common_tab_item" role="none"><a
						href="<%= contextPath %>/cmain.pr?ctype=공연" id="공연"
						class="common_tab_btn" role="tab" aria-selected="false">전체</a></li>
				</ul>

				<% } %>
			</div>

		</div>
		<!-- 버튼 끝 -->

		<!-- 메인배너 시작 -->
		<div id="demo" class="carousel slide" data-bs-ride="carousel">

			<!-- 하단 버튼 시작 -->
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
				<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
				<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
				<button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
			</div>
			<!-- //하단 버튼 끝 -->

			<!-- 이미지 시작 -->
			<% if(ctype.equals("영화")){ %>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resource/배너/배너_공포스릴러영화_콘크리트유토피아.png" class="d-block">
				</div>
				<div class="carousel-item">
					<img src="resource/배너/배너_로멘스영화_알라딘.png" class="d-block">
				</div>
				<div class="carousel-item">
					<img src="resource/배너/배너_액션영화_슬램덩크.png" class="d-block">
				</div>
				<div class="carousel-item">
					<img src="resource/배너/배너_코미디영화_극한직업.png" class="d-block">
				</div>
			</div>
			<% }else if(ctype.equals("전시")){ %>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resource/배너/배너_그림전시_라울뒤피.jpg" class="d-block">
				</div>
				<div class="carousel-item">
					<img src="resource/배너/배너_사진전시_대화의 방식.png" class="d-block">
				</div>
				<div class="carousel-item">
					<img src="resource/배너/배너_사진전시_에릭요한슨.png" class="d-block">
				</div>
				<div class="carousel-item">
					<img src="resource/배너/배너_체험전시_이세계.jpg" class="d-block">
				</div>
			</div>
			<% }else if(ctype.equals("공연")){ %>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resource/배너/배너_연극공연_괴담.jpg" class="d-block">
				</div>
				<div class="carousel-item">
					<img src="resource/배너/배너_뮤직컬공연_사칠.jpg" class="d-block">
				</div>
				<div class="carousel-item">
					<img src="resource/배너/배너_콘서트공연_미모리스즈코.png" class="d-block">
				</div>
				<div class="carousel-item">
					<img src="resource/배너/배너_클래식공연_디즈니.jpg" class="d-block">
				</div>
			</div>
			<% }%>


			<!-- //이미지 끝 -->

			<!-- 좌우 버튼 시작 -->
			<button class="carousel-control-prev" type="button"
				data-bs-target="#demo" data-bs-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#demo" data-bs-slide="next">
				<span class="carousel-control-next-icon"></span>
			</button>
			<!-- //좌우 버튼 끝 -->

		</div>
		<br>
		<br>
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
				<% if(ctype.equals("영화") || ctype.equals("공연") || ctype.equals("전시")){ %>
				<% for(int i=0; i<mlist.size(); i++){ %>
				<!-- 포스터, 설명글 시작 -->
				<div class="col-md-5">
					<div class="thumbnail">
						<a
							href="<%= contextPath %>/detail.pr?pno=<%= mlist.get(i).getProductNo() %>">
							<img
							src="<%=mlist.get(i).getImagePath() %>/<%= mlist.get(i).getPosterName() %>"
							alt="Lights" style="width: 100%">
							<div class="caption">
								<p><%=mlist.get(i).getProductTitle() %></p>
								<pre><%= mlist.get(i).getStartPeriod() %>~<%= mlist.get(i).getEndPeriod() %></pre>
							</div>
						</a>
					</div>
				</div>
				<!-- //포스터, 설명글 끝 -->
				<% } %>
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
				<% if(ctype.equals("영화") || ctype.equals("공연") || ctype.equals("전시")){ %>
				<% for(int i=0; i<mtlist.size(); i++){ %>
				<!-- 포스터, 설명글  시작 -->
				<div class="col-md-4">
					<div class="thumbnail">
						<a
							href="<%= contextPath %>/detail.pr?pno=<%= mtlist.get(i).getProductNo() %>">
							<img
							src="<%= mtlist.get(i).getImagePath() %>/<%= mtlist.get(i).getPosterName() %>"
							alt="Lights" style="width: 100%">
							<div class="caption">
								<p><%= mtlist.get(i).getProductTitle() %></p>
								<pre><%= mtlist.get(i).getStartPeriod() %>~<%= mtlist.get(i).getEndPeriod() %></pre>
							</div>
						</a>
					</div>
				</div>
				<!-- //포스터, 설명글  끝 -->
				<% } %>
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

	<script>
                
                    $(function(){
                    	
                    	let ctype = "<%= ctype %>"
                    	
                    	console.log(ctype)
                    	$(".common_tab_btn").attr("aria-selected","false");
                    	$("#" + ctype).attr("aria-selected","true");
                        
                    })
                </script>

	<%@ include file="../common/footer.jsp"%>
</body>
</html>