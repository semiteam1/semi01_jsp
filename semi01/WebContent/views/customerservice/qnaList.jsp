<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        /*qna 메뉴창 클릭시 css값*/
        #qnamenu>p{
            display: none;
            float:right;
        }
        /*바디의 오른쪽 메뉴*/
        .원하는데로_바꾸세요 .rightmenu{
            background-color: white;
            width: 880px;
            height:400px;
            margin-right: 23.8%;
            margin-top: 5px;
            float:right;
        }
       
        /*테이블영역*/
        .list-area{
        border: 1px solid white;
        width: 100%;
        text-align: center;
        }

        .list-area>tbody>tr:hover{
    	background: gray;
    	cursor:pointer;
        }



        

        
        /* 바디 끝 */
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
            <div onclick="location.href='<%=contextPath %>/notice.no';">공지사항</div>
            <div id="qnamenu" style="color:red" >Q&A </div>
        </div>        
        <!-- 바디의 오른쪽메뉴-->
        <div class="rightmenu">
            <table align="center" class="list-area">
                <thead>
                    <tr>
                        <th width="70">번호</th>
                        <th width="300">질문제목</th>
                        <th width="100">작성자</th>
                        <th width="100">등록일자</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- case1. 게시글이 없을 경우-->
                    <tr>
                        <th colspan="4">조회된 게시글이 없습니다.</th>
                    </tr>
                    <!-- case2. 게시글이 있을 경우-->
                    <tr>
                        <td>1</td>
                        <td>윤대표의 잘생김의 비결은 뭔가요?</td>
                        <td>조과장</td>
                        <td>2023-08-25</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>용석님은 코딩을 너무 잘하는데 비결이 뭔가요?</td>
                        <td>조과장</td>
                        <td>2021-08-21</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

 <script>
        $(function(){
            $(".leftmenu").hover().css("cursor","pointer");
            
        })
    </script>

<%@ include file = "../common/footer.jsp" %>
</body>

</html>