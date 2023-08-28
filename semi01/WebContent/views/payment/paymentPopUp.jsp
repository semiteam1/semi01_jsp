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
	#book-info {
		height: 28%;
		line-height: 2;
		border-bottom: 1px solid #cecece;
		padding-bottom: 10px;
	}
	#product-info {
		height: 20%;
		line-height: 2;
		border-bottom: 1px solid #cecece;
		padding-bottom: 10px;
	} 
	h3 {
		margin-left: 15px;
	}
	th {
		width: 150px;
	}
	#user-info {
		height: 50%;
		line-height: 2;
	}
	#payBtn {
		width: 100%;
	}
	#payBtn>button {
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
	}
	#payBtn>button:hover {
		cursor: pointer;
		opacity: 0.7;
	}
	#credit {
		display: none;
	}
	th, td {
		border: 1px  solid #cecece;
	}
</style>
</head>
<body>
	<div class="outer">
		<div id="logo" align="center">
			<img width="200" height="100" src="resource/logo/logo.png">
		</div>
		<form action="<%= contextPath %>/paymentFinal.pa" method="post">
			<div id="book-info">
				<h3>예매 정보 입력</h3>
				<table>
					<tr>
						<th>관람 인원수</th>
						<td colspan="2">
							<select name="audience" id="audience">
								<option value="1">1명</option>
								<option value="2">2명</option>
								<option value="3">3명</option>
								<option value="4">4명</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>결제수단</th>
						<td>
							<select name="payment" id="payment" onchange="payTool(this.value)">
								<option value="1">계좌이체</option>
								<option value="2">신용카드</option>
							</select>
						</td>
						<td id="credit">
							<select name="card" id="card">
								<option value="20">카드종류를 선택하세요</option>
								<option value="21">국민카드</option>
								<option value="22">신한카드</option>
								<option value="23">우리카드</option>
								<option value="24">하나카드</option>
								<option value="25">농협카드</option>
								<option value="26">현대카드</option>
								<option value="27">삼성카드</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>할인</th>
						<td colspan="2">
							<b style="color: red;"><u>골드</u></b>등급 할인 <b style="color: red;"><u>10%</u></b> 적용
						</td>
					</tr>
					<tr>
						<th>티켓 수령방법</th>
						<td colspan="2">현장수령</td>
					</tr>
				</table>
			</div>
			<div id="product-info">
				<h3>공연 정보 확인</h3>
				<table>
					<tr>
						<th>공연 제목</th>
						<td>콘크리트 유토피아</td>
					</tr>
					<tr>
						<th>공연 장소</th>
						<td>CGV 고양백석, 1관</td>
					</tr>
					<tr>
						<th>공연 일시</th>
						<td>2023.08.13 (일) 11:00</td>
					</tr>
					<tr>
						<th>가격</th>
						<td>13,500원 (15,000원 - 골드 등급 10% 할인 금액)</td>
					</tr>
				</table>
			</div>
			<div id="user-info">
				<h3>주문자 정보 확인</h3>
				<table>
					<tr>
						<th>이름</th>
						<td>홍길동</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="text" name="userBirth" placeholder="ex. 990101" required></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>010-1234-5678</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>user01@gmail.com</td>
					</tr>
				</table>
			</div>
			<div id="payBtn" align="center">
				<button type="submit" onclick="return checkInfo();">결제하기</button>
			</div>
		</form>

		<script>

			function payTool(value) {

				if(value == 2) {
					$("#credit").css("display", "block");
				}
				else {
					$("#credit").css("display", "none");
				}

			}

			function checkInfo() {

				const regExp = /^\d{2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;

				if(!regExp.test($("input[name=userBirth]").val())) {
					alert("생년월일을 잘못 입력하셨습니다.");
					$("input[name=userBirth]").focus();
					return false;
				}
				else {
					return confirm("예매 관련 정보를 모두 확인하셨나요?");
				}

			}

		</script>

	</div>
</body>
</html>