<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
			<h1>새 전통차 입력</h1>
		</div>
	</div>
	<div class="mainDiv">
		<div class="homeLink">
			<p>
				<a href="${home}">홈으로</a>
			</p>
		</div>
		<div class="newTea">
			<form:form method="POST" modelAttribute="tradiTea"
				onsubmit="return checkName()">
				<fieldset>
					<legend>신상품 정보 입력</legend>
					<div>
						<table>
							<tr>
								<th><label for="teaName"> <spring:message
											code="addTea.form.teaName.label" />
								</label>
								<td><form:input id="teaName" path="teaName" type="text" /></td>
							</tr>
							<tr>
								<th><label for="prodDate"> 제조일(mm/dd/yyyy) </label>
								<td><form:input id="prodDate" path="prodDate" type="text" /></td>
							</tr>
						</table>
					</div>
					<div>
						<div>
							<input type="submit" id="btnAdd" value="저장" />
						</div>
					</div>
				</fieldset>
			</form:form>
		</div>
	</div>
	<script>
		function checkName() {
			var nameBox = document.getElementById('teaName');
			if (nameBox.value.trim() == '') {
				alert('"전통차 이름" 누락');
				return false;
			} else
				return true;
		}
	</script>
</body>
</html>