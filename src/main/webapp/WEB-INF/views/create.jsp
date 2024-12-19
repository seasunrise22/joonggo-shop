<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>중고물품 등록</title>
<style>
table {
	width: 50%;
	table-layout: fixed;
}

th, td {
	padding: 4px;
	text-align: center;
}

td:nth-child(2) {
	text-align: left;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

td:nth-child(4) {
	text-align: left;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

th { /* 번호 */
	width: 10%
}

th:nth-child(2) { /* 물품명 */
	width: 30%
}

th:nth-child(3) { /* 가격 */
	width: 10%
}

th:nth-child(4) { /* 설명 */
	width: 50%
}
button {
	font-size: 18px;
	padding: 10px 20px;	
}
</style>
</head>
<body>
	<h1>중고상품 등록</h1>

	<table border="1">
		<tr>
			<td colspan="4" style="text-align: right;">
				<!-- HTTP GET 요청을 통해 /creates 경로로 이동하게 됩니다. 이는 사용자가 URL을 직접 입력하여 이동하는 것과 동일합니다. -->
				<button onclick="location.href='/'">돌아가기</button>
			</td>
		</tr>
		<tr>
			<th>번호</th>
			<th>물품명</th>
			<th>가격</th>
			<th>설명</th>
		</tr>
		<c:forEach var="product" items="${productList}">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td><fmt:formatNumber value="${product.price}" type="number"
						pattern="#,###"></fmt:formatNumber>원</td>
				<td>${product.description}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>