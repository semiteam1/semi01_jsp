<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="resource/image/logo2.png" rel="shortcut icon" type="image/x-icon">
<style>
	.outer {
        height: 2000px;
        width: 100%;
        position: relative;
        z-index: 1;
	}

        /* 바디 시작 */

        /* 상단 메인 배너 */
        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */

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

        .recommend_img{
            width: 1180px;
            float: left;
            margin-left: 370px;
            margin-right: 50px;
        }

        .div_img{
            width: 20%;
            float: left;
            padding-left: 10px;
            padding-right: 10px;
            padding-bottom: 30px;
        }

        .div_img img {
            border-radius: 10px;
        }

        /* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
        /* 사이드바 */
        .sticky_outer {
            width: 200px;
            height: 1400px;
            float: left;
        }

        /* 배너 이미지 사이즈조정 */
        .sidebar {
        width: 80%;
        height: 450px;
        border-radius: 10px;
        margin-top: -50px;
        }

        .sidebar {
        position: -webkit-sticky;
        position: sticky;
        top: 0;
        }

</style>
</head>
<body>
	<%@ include file = "/views/common/header.jsp" %>
	
	<div class="outer" >

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

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 랭킹 추천 -->
    <div class="recommend_img">
        <span style="font-weight: bold; font-size: 25px;">전체랭킹 딱대</span>
        <br>
        <hr>
        
        
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
            <br><br>
            <img src="resource/이미지자료/류지완 샘플이미지/페이딱.png" style="width: 100%;">
            <br><br><br>

            <span style="font-weight: bold; font-size: 25px;">관심사 랭킹 딱대</span>
            <br>
            <hr>
            
            
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

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- 사이드바 -->
        <div class="sticky_outer">
            <img src="resource/이미지자료/류지완 샘플이미지/새로배너.PNG" class="sidebar">
        </div>
        <br><br>

</div>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

	
	<%@ include file = "/views/common/footer.jsp" %>
</body>
</html>