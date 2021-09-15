<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<c:url value='/resources/css/teaHome.css'/>">
<title>전통차 상품</title>
</head>
<body>
	<script>
		<c:set var="home" value= "${pageContext.request.contextPath}"/>
	</script>
	<div class="top">
		<div class="textPart">
			<h1>${welcomeMsg}</h1>
		</div>
	</div>
	<div class="mainDiv">
		<div class="homeLink">
			<p>
				<a href="${home}">홈으로</a>
			</p>
		</div>
		<div class="teaDetail">
			<h3>차이름: ${tradiTea.teaName}</h3>
			<p>제품ID: ${tradiTea.teaID}</p>
			<p>제고 수량: ${tradiTea.stock} 박스</p>
			<p>제조 날짜: ${tradiTea.prodDate}</p>
			<p>상품 용량: ${tradiTea.amount}</p>
			<p>판매 가격: ${tradiTea.priceStr}</p>
			<p>본래 가격: ${tradiTea.priceOriginalStr}</p>
			<p>상품 설명: ${tradiTea.prodDesc}</p>
		</div>
	</div>
</body>
</html>