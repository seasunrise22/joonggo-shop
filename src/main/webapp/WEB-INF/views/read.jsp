<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>열람 페이지</title>
<style>
table {
	width: 50%;
	table-layout: fixed;
}

th, td {
	padding: 4px;
	text-align: center;
}

button {
	font-size: 18px;
	padding: 10px 20px;
}

.button-container {
	display: flex;
	justify-content: space-between;
}
</style>
</head>
<body>
	<h1>중고물품 열람</h1>
	<table border="1">
		<colgroup>
			<col style="width: 10%">
			<col style="width: 10%">
			<col style="width: 10%">
			<col>
			<col style="width: 10%">
			<col>
		</colgroup>
		<tr>
			<td colspan="6">
				<div class="button-container">
					<!-- HTTP GET 요청을 통해 /creates 경로로 이동하게 됩니다. 이는 사용자가 URL을 직접 입력하여 이동하는 것과 동일합니다. -->
					<button type="button" style="text-align: left;"
						onclick="location.href='/'">돌아가기</button>
				</div>
			</td>
		</tr>
		<tr>
			<th>물품번호</th>
			<td>${product.id}</td>
			<th>물품명</th>
			<td>${product.name}</td>
			<th>가격</th>
			<td><fmt:formatNumber value="${product.price}" type="number"
						pattern="#,###"></fmt:formatNumber>원</td>
		</tr>
		<tr>
			<th colspan="2">설명</th>
			<td colspan="4" style="text-align: left;">${product.description}</td>
		</tr>
	</table>
</body>
</html>