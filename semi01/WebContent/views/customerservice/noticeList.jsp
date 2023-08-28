<%@page import="com.kh.semi01.notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 바디 시작 */
               /* 바디 메인 */
               .원하는데로_바꾸세요{
                border: 1px solid lightgray;
            background-color: lightgray;
            height: 900px;
            width: 100%;
        }

        /* body 고객센터*/
        .servicecenter{
            
            background-color:black;
            height: 100px;
            width: 1050px;
            margin:auto;
            margin-right: 23.8%;
            margin-top:50px;            
        }
        .servicecenter>h1{
            color:white;
            line-height:100px;
        } 

        /*body leftmenu*/
        .원하는데로_바꾸세요 .leftmenu{
            background-color: white;
            font-size: 19px;
            text-align:center;
            line-height: 100px;
            width: 160px;
            height: 300px;
            margin-left: 21%;
            margin-top: 5px;
            float:left;
        }

        .원하는데로_바꾸세요 .leftmenu div{
            width:100%;
            height: 33.3%;
            border: 1px solid gray;
        }
        #announce>p{
            display: none;
            float:right;
        }
        
        /*바디의 오른쪽 메뉴*/
        .원하는데로_바꾸세요 .rightmenu{
            background-color: white;
            width: 880px;
            height:600px;
            margin-right: 23.8%;
            margin-top: 5px;
            float:right;
        }
        .rightmain{
            width:100%
        }
        #event{
            width: 100%;
            height: 150px;
            /* border:  2px solid red; */
            /* margin-top: 10px; */
            border: 0;
            background-color: white;
        }
        .rightmain th{
            height:40px;
        }
        /*테이블 첫 번째 줄*/
        #tr1{
            background-color: lightblue;
            font-size: 20px;
            text-align: center;
            color:gray
        }

        /* 바디 끝 */
        /* 푸터 시작 */
</style>
</head>
<body>
<%@ include file = "../common/header.jsp" %>

<!-- 내용 넣을 수 있는 구간 시작 -->

<div class="원하는데로_바꾸세요">
    <div class="servicecenter">
        <h1 align="center">고객센터</h1>
    </div>

    <div class="servicefunction">
        <!-- 바디의 왼쪽메뉴-->
        <div class="leftmenu">
            <div onclick="location.href='<%=contextPath %>/customer.cu'">고객센터 홈</div>
            <div id="announce" style="color:red" onclick="location.href='<%=contextPath %>/notice.no';">공지사항 </div>
            <div onclick="location.href='<%=contextPath %>/qna.qo'">Q&A</div>
        </div>


        </script>
       
        <!-- 바디의 오른쪽메뉴-->
        <div class="rightmenu">
            <h2 align="center">공지사항</h2>
            <img id="event" src="resource/이미지자료/이벤트.png">
            <table class="rightmain">
                <tr id="tr1">
                    <td>번호</td>
                    <td colspan="2">제목</td>
                    <td>조회수</td>
                </tr>
                <tr>
                    <th>티켓오픈</th>
                    <th width="400">[단독판매] PUBG NATIONS CUP 2023 티켓오픈 안내</th>
                    <th>오픈: 2023.08.24(목) 18:00	</th>
                    <th>50</th>
                </tr>
                <tr>
                    <th>티켓오픈</th>
                    <th>누가 내 머리에 똥 쌌어 - 당진 티켓오픈 안내</th>
                    <th>오픈: 2023.08.29(화) 09:00</th>
                    <th>12</th>
                </tr>
            </table>
        </div>
    </div>

</div>

<!-- 내용물 넣을 수 있는 구간 끝 -->
    <!-- 바디 끝 -->
    <script>
        $(function(){
            $(".leftmenu").hover().css("cursor","pointer");
            
        })
    </script>

<%@ include file = "../common/footer.jsp" %>
</body>
</html>