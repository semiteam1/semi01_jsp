<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓딱대</title>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<style>
	div {
		/* border: 1px solid red; */
	}
	.outer {
		height: 900px;
	}
	.outer>div {
		width: 100%;
	}
	#logo {
		height: 12%;
	}
	#pay-info {
		line-height: 2;
	}
	h3 {
		margin-left: 15px;
	}
	th {
		width: 150px;
	}
    #pageClose {
        width: 100%;
    }
	#pageClose>a {
		margin: 10px;
        display: block;
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
		width: 60px;
	}
	#pageClose>a:hover {
		cursor: pointer;
		opacity: 0.7;
	}
	th, td {
		border: 1px solid #cecece;
	}
</style>
</head>
<body>
	<div class="outer">
		<div id="logo" align="center">
			<img width="200" height="100" src="resource/logo/logo.png">
		</div>
		<form action="<%= contextPath %>/paymentRealFinal.pa" method="post">
			
            <div id="pay-info">
                <h3>계좌이체</h3>
                <table>
                    <tr>
                        <th>주문자</th>
                        <td>홍길동</td>
                    </tr>
                    <tr>
                        <th>결제 금액</th>
                        <td>13,500원</td>
                    </tr>
					<tr>
						<th>계좌번호</th>
						<td>신한, 110-456-789043 / (주)티켓딱대</td>
					</tr>
                </table>
                <p align="center">※미결제 상태로 24시간을 초과하면 예매가 자동 취소 되오니 유의해 주시기 바랍니다.※</p>
            </div>

		</form>

        <div id="pageClose" align="center">
            <a href="#" onclick="javascript:window.close()">확인</a>
        </div>

		<script>

			

		</script>

	</div>
</body>
</html>