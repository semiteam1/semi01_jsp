<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer{
		width: 1180px;
        margin: auto;
        /* background-color: skyblue; */
        padding-bottom: 10px;
		margin-top: 20px;
	}

	.product_img_info{
            /* border: 2px solid blue; */
            width: 100%;
            height: 600px;
            padding: 40px 30px;
        }

        #product_img{
            /* border: 2px solid red; */
            width: 405px;
            height: 500px;
            float: left;
        }

        #product_img>img{
            width: 405px;
            height: 500px;
            border-radius: 10px;
        }

        #product_info{
            /* border: 2px solid white; */
            width: 675px;
            height: 500px;
            padding-left: 20px;
            padding-top: 20px;
            float: right;
        }

        #product_info_ul{
            padding: 20px 0px 20px 0px;
            font-weight: bold;
            list-style: none;
        }

        #product_info_li{
            padding: 7px 0px 6px;
            width: 300px;
            float: left;
        }
        #product_info_li_span1{
            size: 40px;
            padding-right: 30px;
            float: left;
            font-size: 15px;
        }

        #product_info_li>div{
            width: 300px;
        }

        #product_info_2, #product_info_2_1{
            list-style: none;
        }

        #product_info_2_span{
            size: 40px;
            padding-right: 30px;
            float: left;
            height: 200px;
            font-weight: bold;
        }

        #product_info_2_1>li{
            font-weight: bold;
        }

        #product_info_2>li{
            height: 130px;
            width: 300px;
            line-height: 30px;
            float: left;
        }
        /* 잘보여라@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
        /* 예매파트 시작 */
        .booked{
            border: 1px solid black;
            width: 1180px;
            height: 300px;
            border-radius: 10px;

        }
        .booked_part1{
            /* border: 5px solid; */
            height: 100%;
            width: 37%;
            float: left;
        }

        .booked_part2{
            border-left: 1px solid lightgray;
            height: 100%;
            width: 37%;
            float: left;
        }

        .booked_part3{
            /* border: 1px solid yellow; */
            background-color: rgb(243, 236, 236);
            height: 100%;
            width: 25%;
            padding-left: 10px;
            float: right;
            border-radius: 0px 10px 10px 0px;
            border-left: 1px solid lightgray;
        }

        #step{
            color: red;
            font-weight: bolder;
            font-size: 15px;
        }


        .booked_btn_form{
            /* border: 1px solid red; */
            width: 100%;
            height: 90px;
            float: left;
        }

        .booked_btn{
            background-color: red;
            color: white;
            width: 250px;
            height: 50px;
            margin-top: 15px;
            margin-right: 30px;
            font-weight: bolder;
            float: right;
            border-radius: 10px;
            border: 0px;
            cursor: pointer;
        }

        .booked_part1_calender1{
            /* border: 5px solid blue; */
            height: 100%;
            width: 20%;
            float: left;
            font-size: 15px;
            font-weight: 900;
            padding-left: 20px;
        }
        
        .booked_part1_calender2{
            height: 100%;
            width: 30%;
            
        }

        .booked_part1_calender3{
            /* border: 1px solid red; */
            height: 100%;
            width: 70%;
            float: right;
        }

        .booked_part3_b{
            padding-right: 10px;
            float: right;
        }

        
        .booked_part2_ampm1{
            width: 25%;
            height: 100%;
            float: left;
            font-weight: bolder;
            font-size: 15px;
            padding-left: 20px;
        }
        
        .booked_part2_ampm2{
            width: 74%;
            height: 100%;
            padding-top: 30px;
            float: right;
        }

        .booked_part2_ampm{
            border: 1px solid black;
            background-color: white;
            font-weight: bold;
            font-size: 20px;
            width: 280px;
            height: 70px;
            border-radius: 10px;
            margin-bottom: 15px;
            padding-right: 120px;
            cursor: pointer;
        }
        


        /* 잘보여라@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
        /* 탭메뉴 파트 시작 */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .tab-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .tab-button {
            background-color: white;
            border: 1px solid lightgray;
            border-bottom: 1px solid black;
            padding: 10px 15px;
            width: 20%;
            font-size: 20px;
            color: #333;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s, border 0.3s, color 0.3s;
        }

        .tab-button:hover {
            background-color: white;
        }

            .active.tab-button {
            border: 1px solid black;
            border-bottom: white;
            font-weight: bolder;
        }

        .tab-content {
            display: none;
            /* background-color: gray; */
            margin-top: 20px;
			margin: auto;
        }

		.tab-content>img{
			width: 1180px;
			margin: auto;
			padding-top: 40px;
		}

        .active {
            display: block;
        }

        /* 잘보여라@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
        /* 리뷰파트 시작 */
        .review{
            width: 100%;
            height: 50px;
            padding-top: 10px;
            color: black;
        }

        .review_btn{
            float: right;
            width: 70px;
            height: 50px;
            border-radius: 10%;
            border: 0;
            cursor: pointer;
        }

        .review_form{
            height: 270px;
        }


        /* 잘보여라@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
        /* 추천상품 */

        .div_img{
            width: 20%;
            float: left;
            padding-left: 10px;
            padding-right: 10px;
            padding-bottom: 30px;
        }

        .div_img img {
            border-radius: 20px;
        }

        /* 잘보여라@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
        /* 상품상세정보 시작 */

        .product_detail{
            /* border: 5px solid; */
            width: 100%;
        }

        .product_detail>img{
            width: 1180px;
            display: block;
            margin: auto;
        }
</style>
</head>
<body>
	<%@ include file = "/views/common/header.jsp" %>
	
	<div class="outer">

		<div class="product_img_info">
			<div id="product_img"><img src="resource/이미지자료/01_공연/클래식/디즈니 지브리 포스터.jpg" alt="액션_가오갤3"></div>
			<div id="product_info">
				<div><h1>[디즈니 VS 지브리] 애니메이션 첼로 페스티벌</h1></div>
				<hr style="border: 1px solid black;">
				<ul id="product_info_ul">
					<li id="product_info_li">
						<span id="product_info_li_span1">장소</span>
						<div>성남아트센터 콘서트홀</div>
					</li>
					<li id="product_info_li">
						<span id="product_info_li_span1">관람시간</span>
						<div>300분</div>
					</li>
					<li id="product_info_li">
						<span id="product_info_li_span1">기간</span>
						<div>2023.08.10 ~ 2023.11.31</div>
					</li>
					<li id="product_info_li">
						<span id="product_info_li_span1">관람등급</span>
						<div>전체 이용가</div>
					</li>
				<br>
				</ul>

				<br>
				<br>
				<hr>
				
				<ul id="product_info_2">
					<li>
						<span id="product_info_2_span">가격</span>
						<div>
							<ul id="product_info_2_1" >
								<li>성인 <em>40000</em>원</li>
								<li>청소년 <em>20000</em>원</li>
								<li>어린이 <em>10000</em>원</li>
							</ul>
						</div>
					</li>
					<li>
						<span id="product_info_2_span">할인</span>
						<div>
							<ul id="product_info_2_1">
								<li>[회원할인] 브론즈 1% 할인</li>
								<li>[회원할인] 실버 5% 할인</li>
								<li>[회원할인] 골드 10% 할인</li>
								<li>[회원할인] 마스터 15% 할인</li>
								<li>[카드할인] 현대카드 10% 할인</li>
								<li>[카드할인] 롯데카드 5% 할인</li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>

		<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
		<!-- 예매 파트 -->
		<!-- <form action="<%= contextPath %>/payment.pa" method="post"> -->
			<div class="booked">
				<div class="booked_part1">
					<div class="booked_part1_calender1">
						<br><br>
						<p id="step">step 1</p><br>
						날짜 선택
					</div>

					<div class="booked_part1_calender2">
						달력
					</div>
				</div>
				<div class="booked_part2">
					<div class="booked_part2_ampm1">
						<br><br>
						<p id="step">step 2</p><br>
						회차 선택
					</div>
					<div class="booked_part2_ampm2" align="center">
						<button class="booked_part2_ampm">11시 00분</button>
						<button class="booked_part2_ampm">18시 00분</button>
					</div>
				</div>
				<div class="booked_part3">
					<br><br>
					<b>예매 가능 좌석</b>
					<br><br><br><br>
					<b class="booked_part3_b">20매</b>
					
				</div>
			</div>
			<div class="booked_btn_form">
				<button type="submit" class="booked_btn" onclick="book();">예매하기</button>
			</div>
		<!-- </form> -->

		<script>

			function book() {
				window.open("<%= contextPath %>/paymentPopUp.pa", "payment", "width = 500, height = 600");
			}

		</script>
		
		<br><br><br><br>
		
		<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
		<!-- 탭메뉴 파트 -->
		<div class="tab-container">
			<button class="tab-button" onclick="openTab(event, 'tab1')">상세정보</button>
			<button class="tab-button" onclick="openTab(event, 'tab2')">관람후기</button>
			<button class="tab-button" onclick="openTab(event, 'tab3')">기대평</button>
			<button class="tab-button" onclick="openTab(event, 'tab4')">장소정보</button>
			<button class="tab-button" onclick="openTab(event, 'tab5')">예매/취소안내</button>
		</div>

		<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
		<!-- 상품관련정보 -->
		  
		<div id="tab1" class="tab-content">
			<img src="resource/이미지자료/01_공연/클래식/디즈니 지브리 포스터.jpg" alt="">
		</div>
		  
		<div id="tab2" class="tab-content">
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!-- 리뷰 파트 -->
			<h1 style="padding-top: 20px;" align="left">관람후기</h1>
			<br>
			<hr style="border: 1px solid black;">
			<div class="review" align="left">
				<h4>게시판 운영규정에 맞지 않는 글은 사전 통보없이 삭제될 수 있습니다.</h4>
			</div>
			<form action="" class="review_form">
				<div class="review_content">
					<textarea name="" cols="160" rows="10" style="resize: none;"></textarea>
				</div>
				<br>
				<div class="review_content">
					<button type="submit" class="review_btn" style="background-color: black; color: white;">등록</button>
				</div>
				<br>
			</form>
		  </div>
		  
		  <div id="tab3" class="tab-content">
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!-- 기대평 파트 -->
			<h1 style="padding-top: 20px;" align="left">기대평</h1>
			<br>
			<hr style="border: 1px solid black;">
			<div class="review" align="left">
				<h4>게시판 운영규정에 맞지 않는 글은 사전 통보없이 삭제될 수 있습니다.</h4>
			</div>
			<form action="" class="review_form">
				<div class="review_content">
					<textarea name="" cols="160" rows="10" style="resize: none;"></textarea>
				</div>
				<br>
				<div class="review_content">
					<button type="submit" class="review_btn" style="background-color: black; color: white;">등록</button>
				</div>
				<br>
			</form>
		  </div>

		  <div id="tab4" class="tab-content">
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!-- 장소 정보 파트 -->
			<h1 style="padding-top: 20px;" align="left">공연장 정보</h1>
			<br>
			<hr style="border: 1px solid black;">
			<br>
			<img src="resource/이미지자료/류지완 샘플이미지/공연장정보 샘플.PNG">
		  </div>

		  <div id="tab5" class="tab-content">
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!-- 예매/취소안내 파트 -->
			<h1 style="padding-top: 20px;" align="left">예매/취소안내</h1>
			<br>
			<hr style="border: 1px solid black;">
			<br>
			<img src="resource/이미지자료/류지완 샘플이미지/예매,취소안내 이미지1.PNG" alt="">
			<img src="resource/이미지자료/류지완 샘플이미지/예매,취소안내 이미지2.PNG" alt="">
		  </div>
		  
		  <script>
		  function openTab(event, tabName) {
			const tabContents = document.getElementsByClassName("tab-content");
			for (const content of tabContents) {
			  content.style.display = "none";
			}
		  
			const tabButtons = document.getElementsByClassName("tab-button");
			for (const button of tabButtons) {
			  button.classList.remove("active");
			}
		  
			document.getElementById(tabName).style.display = "block";
			event.currentTarget.classList.add("active");
		  }
		  
		  document.getElementById("tab1").style.display = "block";
		  document.getElementsByClassName("tab-button")[0].classList.add("active");
		  </script>



		<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
		<!-- 제일 하단 추천상품 -->
		<span style="font-weight: bold; font-size: 25px;">랭킹 딱대</span>
				  <hr>

				  <div class="recommend_img">
					
						<div class="div_img">
						  <a href="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" target="_blank">
							<img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
							<div class="caption">
							  <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
							</div>
						  </a>
						</div>
					
					
						<div class="div_img">
						  <a href="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" target="_blank">
							<img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
							<div class="caption">
							  <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
							</div>
						  </a>
						</div>
					
					
						<div class="div_img">
						  <a href="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" target="_blank">
							<img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
							<div class="caption">
							  <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
							</div>
						  </a>
						</div>
					
						<div class="div_img">
						  <a href="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" target="_blank">
							<img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
							<div class="caption">
							  <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
							</div>
						  </a>
						</div>
					
						<div class="div_img">
						  <a href="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" target="_blank">
							<img src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000087/87034/87034214832_727.jpg" alt="Fjords" style="width:100%">
							<div class="caption">
							  <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
							</div>
						  </a>
						</div>
					</div>
					<hr>
					<br><br>
					
					<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
					<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
					<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
					<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
					<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
					
					<!-- 상세페이지 끝 -->
					<!-- 류지완 끝 -->
					
				</div>
			</div>

	
	<%@ include file = "/views/common/footer.jsp" %>
</body>
</html>