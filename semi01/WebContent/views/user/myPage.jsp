<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
    /* 마이페이지 시작 */
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
    #myPage-header {
        width: 100%;
        height: 15%;
        /* border: 1px solid red; */
        text-align: center;
        padding-top: 10px;
    }
    #myPage-header>img {
        width: 200px;
        height: 100px;
    }
    #myPage-body {
        width: 100%;
        height: 80%;
        background-color: white;
        border-radius: 20px;
    }
    #myPage-footer {
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
    #myPage-title {
        /* border: 1px solid red; */
        width: 80%;
        height: 100%;
        margin: auto;
        border-bottom: 2px solid #8c8c8c;
    }
    #myPage-title>h4 {
        color: #202020;
        font-weight: normal;
        line-height: 6;
        /* border: 1px solid red; */
    }
    #myPage-title>h4>span {
        color: #202020;
        font-size: 15px;
    }
    #myPage-content {
        width: 80%;
        height: 100%;
        margin: auto;
        /* border: 1px solid red; */
        line-height: 3;
    }
    #myPage-content button {
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
    #myPage-content button:hover {
        opacity: 0.7;
    }
    .form-title {
        color: #707070;
        font-size: 15px;
        width: 100px;
    }
    .form-content>input {
        color: #202020;
        font-size: 14px;
        /* border-style: none; */
    }
    button {
        background-color: #f8f8f8;
        color: #8c8c8c;
        border-color: #f8f8f8;
        border-radius: 5px;
    }
    .modal-body div {
        text-align: right;
    }
    /* //마이페이지 끝 */
</style>
</head>
<body>
    <%@ include file = "../common/header.jsp" %>
    
    <div class="background">

        <div class="outer">
    
            <div id="myPage-header">
                <img src="resource/logo/로고2.png">
            </div>
    
            <div id="myPage-body">
                
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
                        <div id="myPage-title">
                            <h4>
                                마이페이지 <span>회원정보조회</span>
                            </h4>
                        </div>
                    </div>
                    
                    <div id="right-bottom">
                        <div id="myPage-content">
                            <form action="<%= contextPath %>/myPageUpdate.us" method="post">
                            	<input type="hidden" name="userNo" value="<%= loginMember.getUserNo() %>">
                                <table id="myPageForm">
                                    <tr>
                                        <td class="form-title">*아이디</td>
                                        <td colspan="3" class="form-content"><%= loginMember.getUserId() %></td>
                                    </tr>
                                    <tr>
                                        <td class="form-title">이름</td>
                                        <td colspan="3" class="form-content"><input type="text" name="userName" required value="<%= loginMember.getUserName() %>"></td>
                                    </tr>
                                    <tr>
                                        <td class="form-title">전화번호</td>
                                        <td colspan="3" class="form-content"><input type="text" name="phone" value="<%= loginMember.getPhone() %>"></td>
                                    </tr>
                                    <tr>
                                        <td class="form-title">이메일</td>
                                        <td colspan="3" class="form-content"><input type="email" name="email" value="<%= loginMember.getEmail() %>"></td>
                                    </tr>
                                    <tr>
                                        <td class="form-title">*생년월일</td>
                                        <td colspan="3" class="form-content"><%= loginMember.getUserBirth() %></td>
                                    </tr>
                                    <tr>
                                        <td class="form-title">*등급</td>
                                        <td colspan="3" class="form-content"><a href="<%= contextPath %>/myLevel.us"><%= loginMember.getGrade() %></a></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3" class="form-title">관심있는 태그</td>
                                        <td>
                                            <td>
                                                <select name="interestMovie">
                                                    <option value="1">로맨스(영화)</option>
                                                    <option value="2">공포/스릴러(영화)</option>
                                                    <option value="3">코미디(영화)</option>
                                                    <option value="4">액션(영화)</option>
                                                </select>
                                            </td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <td>
                                                <select name="interestDisplay">
                                                    <option value="5">그림(전시)</option>
                                                    <option value="6">작품(전시)</option>
                                                    <option value="7">사진(전시)</option>
                                                    <option value="8">체험(전시)</option>
                                                </select>
                                            </td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <td>
                                                <select name="interestShow">
                                                    <option value="9">뮤지컬(공연)</option>
                                                    <option value="10">연극(공연)</option>
                                                    <option value="11">클래식(공연)</option>
                                                    <option value="12">콘서트(공연)</option>
                                                </select>
                                            </td>
                                        </td>
                                    </tr>
                                </table>
                                
                                <script>
                                
                             		$(function() {

                             			$("select[name=interestMovie]>option").each(function() {
                             				
                             				if($(this).text() == "<%= loginMember.getInterestMovie() %>") {
                             					$(this).attr("selected", true);
                             				}
                             				
                             			});
                             			
										$("select[name=interestDisplay]>option").each(function() {
                             				
                             				if($(this).text() == "<%= loginMember.getInterestDisplay() %>") {
                             					$(this).attr("selected", true);
                             				}
                             				
                             			});
										
										$("select[name=interestShow]>option").each(function() {
                             				
                             				if($(this).text() == "<%= loginMember.getInterestShow() %>") {
                             					$(this).attr("selected", true);
                             				}
                             				
                             			});
                             			
                             		});
                                
                                </script>
                                
                                <div align="center">
                                    <button type="submit" onclick="return change();">정보변경</button>
                                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">비밀번호변경</button>
                                    <button type="button" onclick="deleteUser();">회원탈퇴</button>
                                    <!-- <button id="deleteUser" type="button" data-toggle="modal" data-target="#deleteModal" style="display: none;">회원탈퇴</button> -->
                                </div>

                            </form>
                        </div>
                    </div>
                    
                </div>

            </div>

            <div id="myPage-footer"></div>
    
        </div>

    </div>

    <!-- 비밀번호 변경용 모달 -->
    <div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content -->
        <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">비밀번호 변경</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <form action="#" method="post">
                <table>
                    <tr>
                        <td>현재 비밀번호</td>
                        <td><input type="password" name="userPwd" required></td>
                    </tr>
                    <tr>
                        <td>변경할 비밀번호</td>
                        <td><input type="password" name="updatePwd" required></td>
                    </tr>
                    <tr>
                        <td>변경할 비밀번호 확인</td>
                        <td><input type="password" name="checkPwd" required></td>
                    </tr>
                </table>

                <br>
                <div>
                    <button type="submit" class="btn btn-sm btn-secondary" onclick="return validatePwd();">비밀번호 변경</button>
                </div>

                <br><br>

            </form>
        </div>
        </div>

    </div>
    </div>

    <script>

        function change() {

            return confirm("변경한 정보를 저장하시겠습니까?");

        }

        function validatePwd() {

            if($("input[name=updatePwd]").val() != $("input[name=checkPwd]").val()) {

                alert("변경할 비밀번호가 일치하지 않습니다.");

                $("input[name=checkPwd]").val("");
                $("input[name=checkPwd]").focus();

                return false;

            }

        }

        function deleteUser() {

            if(confirm("탈퇴 후 복구가 불가능합니다. 정말로 탈퇴하시겠습니까?")) {

                location.href = "<%= contextPath %>/deleteUser.us";

            }

        }
        
    </script>

    <!-- 회원탈퇴용 Modal -->
	<div class="modal" id="deleteModal">
        <div class="modal-dialog">
          <div class="modal-content">
      
            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">회원탈퇴</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
      
            <!-- Modal body -->
            <div class="modal-body" align="center">
              <form action="#" method="post">
                  <b>탈퇴 후 복구가 불가능 합니다. <br> 정말로 탈퇴하시겠습니까? </b> <br><br>
                  
                  <!-- 아이디 -->
                  <!-- sql문과 작업을 할 때 아이디도 필요하기 때문에 type을 hidden으로 줘서 같이 controller로 보낸다 -->
                  
                  비밀번호 : <input type="password" name="userPwd" required> <br><br>

                  <button type="submit" class="btn btn-sm btn-danger">탈퇴하기</button>
                  
                  <!-- 
                      회원탈퇴 요청시 sql문
                      UPDATE MEMBER
                         SET STATUS = 'N'
                           , MODIFY_DATE = SYSDATE
                       WHERE USER_ID = '현재 로그인한 회원 아이디'
                         AND USER_PWD = '사용자가 입력한 비밀번호'
                         
                         (정보변경, 비번변경처럼 갱신된 회원 다시 조회할 필요 없음)
                         
                         성공했을 경우 : 메인페이지 alert("성공적으로 회원탈퇴 되었습니다. 그동안 이용해주셔서 감사합니다.")
                                        단, 로그아웃 되어있어야 함 (세션에 loginMember라는 키값에 해당하는 걸 지우기)
                         실패했을 경우 => 마이페이지 alert("회원탈퇴 실패!!") 
                   -->
  
              </form>
            </div>
            
          </div>
        </div>
    </div>

    <%@ include file = "../common/footer.jsp" %>
</body>
</html>