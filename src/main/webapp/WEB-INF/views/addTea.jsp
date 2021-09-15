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
					<legend><spring:message code="addTea.form.legend" />
						</legend>
					<div>
						<table>
							<tr>
								<th><label for="teaName"> 
									<spring:message code="addTea.form.teaName.label" />
								</label></th>
								<td align="left">
									<form:input id="teaName" path="teaName" type="text" /></td>
							</tr>
							<tr>
								<th><label for="amount"> 
									<spring:message code="addTea.form.amount.label" />								  
								 	</label></th> 
								<td align="left">
									<form:input id="amount" path="amount" type="text" /></td>
							</tr>
							<tr>
								<th><label for="price"> 
									<spring:message code="addTea.form.price.label" />								  
								 	</label></th> 
								<td align="left">
									<form:input id="price" path="price" type="text" /></td>
							</tr>
							<tr>
								<th><label for="priceOriginal"> 
									<spring:message code="addTea.form.priceOriginal.label" />								  
								 	</label></th> 
								<td align="left">
									<form:input id="priceOriginal" path="priceOriginal" 
										type="text" /></td>
							</tr>
							<tr>
								<th><label for="stock"> 
									<spring:message code="addTea.form.stock.label" />								  
								 	</label></th> 
								<td align="left">
									<form:input id="stock" path="stock" type="text" /></td>
							</tr>
							<tr>
								<th><label for="prodDate">
									<spring:message code="addTea.form.prodDate.label" />								  
								 	</label></th> 
								<td align="left">
									<form:input id="prodDate" path="prodDate" type="text" /></td>
							</tr>
							<tr>
								<th><label for="prodDesc"> 
									<spring:message code="addTea.form.prodDesc.label" />								  
								 	</label></th> 
								<td><form:textarea id="prodDesc" path="prodDesc" 
									type="textarea" cols='40' rows='5'></form:textarea></td>
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