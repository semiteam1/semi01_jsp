<%@page import="com.kh.semi01.product.model.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer{
		width:900px;
		height:500px;
	}
</style>
</head>
<body>
	<%@ include file = "/views/common/header.jsp" %>
	
	<div class="outer">
		<ul>
			<li><h4><%= request.getAttribute("errorMsg") %></h4></li>
			<li>단어의 철자가 정확한지 확인해보세요.</li>
			<li>한글을 영어로, 영어를 한글로 입력했는지 확인해보세요.</li>
			<li>정확한 상품명을 모를 경우, 상품명 일부만으로 검색해보세요.</li>
		</ul>
	</div>
	
	<%@ include file = "/views/common/footer.jsp" %>
</body>
</html>