<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!--  아이디 찾는 화면 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>티켓딱대 아이디찾기</title>
    <style>
        .logo_div{
            /* border: 1px solid; */
            width: 500px;
            height: 100px;
            margin: auto;
        }
        #logo{width: 95px;height: 40px;
               margin-top: 30px;}
        .outer{
            border: 1px solid  rgba(128, 128, 128, 0.603);
            border-radius: 5px;
            width: 500px;
            height: 550px;
            margin: auto;
            margin-top: 50px;
        }
        /* 잘보여라@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
        /* 탭메뉴 파트 시작 */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .tab-container {
            width: 300px;
            height: 50px;
            /* border: 1px solid; */
            display: flex;
            justify-content: center;
            margin:  auto;
            margin-top: 50px;
        }

        .tab-button {
            background-color: white;
            border: 1px solid rgba(211, 211, 211, 0.397);
            background-color: rgba(128, 128, 128, 0.199);
            border-bottom: 1px solid red;
            padding: 10px 15px;
            width: 50%;
            height: 100%;
            font-size: 13px;
            font-weight: 900;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s, border 0.3s, color 0.3s;
        }

        .tab-button:hover {
            background-color: white;
        }

        .active.tab-button {
            border:  1px solid red;
            background-color: white;
            color: red;
            border-bottom: none;
            font-weight: bolder;
        }

        .tab-content {
            display: none;
            padding: 20px;
            /* background-color: gray; */
            margin-top: 200px;
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
        /* 이메일로 찾아라 */

        .tab-content {
            width: 300px;
            margin: auto;
            height: 250px;
            
            border-bottom: 1px solid red;
            border-left:  1px solid red;
            border-right:  1px solid red;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            /* display: none; */
            /* padding: 20px; */
            
            
        }

        /* 잘보여라@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
        /* 휴대폰번호로 찾아라 */

       

       
        


        .id_pwd_input{
            width: 100%;
            height: 100px;
            border: 1px solid rgba(128, 128, 128, 0.603);
            border-radius: 10px;
        }
        .id_pwd_input>div{
            width: 100%;
            height: 50px;
        }
        #new_user{border: none; height: 19px;  width: 80%; margin-top: 16px; margin-left: 5px; font-size: 18px; font-weight: 400; outline: none;}
        #newMember_img{width: 20px;height: 20px; margin-top: 15px; margin-left: 13px; float: left;}
        .id_pwd_input>div{
            width: 100%;
            height: 50px;
        }
        .id_pwd_input{
            width: 100%;
            height: 150px;
            border: 1px solid rgba(128, 128, 128, 0.603);
            border-radius: 10px;
        }
        input{
            float: left;
        }
        .line{
            border-bottom: 1px solid rgba(128, 128, 128, 0.603);
        }

        #btn_email{
            border: none;
            background-color: red;
            border-radius: 5px;
            width: 256px;
            height: 50px;
            margin-top: 15px;
            color: white;
            font-weight: 900;
            font-size: 15px;
        }
        .find_id_pwd{
            /* border: 1px solid; */
            width: 180px;
            height: 30px;
            margin: auto;
            margin-top: 10px;
        }
        #btn_email:hover{
            cursor: pointer;
            opacity: 0.7;
        }
        .find_id_pwd div{float: left;}
        .blank{border: 1px solid gray; width: 0px;height: 60%;margin-left: 10px; margin-top: 7px; margin-right: 10px;}
        .find{margin-top: 5px; float: left;}
        .find_id_pwd a{text-decoration: none; color: gray; font-size: 14px;}
        .bener{
            /* border: 1px solid rgba(128, 128, 128, 0.603); */
            width: 300px;
            height: 120px;
            margin: auto;
            margin-top: 15px;
        }
        .bener>img{
            border: 1px solid rgba(128, 128, 128, 0.603);
            border-radius: 10px;
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
    <div class="logo_div">
        <a href="<%=contextPath%>"><img src="resource/logo/logo.png" id="logo" alt=""></a>
    </div>
    <form action="<%=contextPath%>/userCheck.ur?type=1"  method="post">
        <div class="outer">

             <div class="tab-container" >
                <button type="button" class="tab-button" style="border-top-left-radius: 10px;" onclick="openTab(event, 'tab1')">이메일로 찾기</button>
                <button type="button"  class="tab-button" style="border-top-right-radius: 10px;" onclick="openTab(event, 'tab2')">휴대폰번호로 찾기</button>
              </div>
              
              
              <div id="tab1" class="tab-content">
                <div class="id_pwd_input" >
                    <div class="line">
                        <img src="resource/이미지자료/비밀번호.png" id="newMember_img">
                            <input type="password" id="new_user" name="fine_pwd" placeholder="비밀번호" required>
                    </div>
                    <div class="line">
                        <img src="resource/이미지자료/달력2.PNG" id="newMember_img">
                            <input type="password" id="new_user" name="fine_pwd" placeholder="생년월일" required>
                    </div>
                    <div class="email_input">
                        <img src="resource/이미지자료/이메일2.png" id="newMember_img">
                        <input type="email" id="new_user" name="fine_email" placeholder="이메일">
                    </div>
                    <button type="submit" id="btn_email">아이디찾기</button>
                </div>
              </div>
        </form>
		<form action="<%=contextPath%>/userCheck.ur?type=4"  method="post">
              <div id="tab2" class="tab-content">
                <div class="id_pwd_input">
                    <div class="line">
                        <img src="resource/이미지자료/비밀번호.png" id="newMember_img">
                            <input type="password" id="new_user" name="fine_pwd" placeholder="비밀번호" required>
                    </div>
                    <div class="line">
                        <img src="resource/이미지자료/달력2.PNG" id="newMember_img">
                            <input type="password" id="new_user" name="fine_pwd" placeholder="생년월일" required>
                    </div>
                    <div class="email_input">
                        <img src="resource/이미지자료/폰.png" id="newMember_img">
                        <input type="email" id="new_user" name="fine_phone" placeholder="휴대폰번호">
                    </div>
                    
                    <button type="submit" id="btn_email">아이디찾기</button>
                </div>

              </div>
                <div class="find_id_pwd" >
                    <div class="find"><a href="<%=contextPath %>/findPwd.ur">비밀번호 찾기</a></div>
                    <div class="blank"></div>
                    <div class="find"><a href="<%=contextPath %>/newUser.ur">회원가입</a></div>
                </div>

                <div class="bener">
                    <img src="resource/이미지자료/배너2.png">
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
        </div>
    </form>
</body>
</html>