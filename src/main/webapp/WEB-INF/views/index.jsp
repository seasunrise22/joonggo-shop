<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Index Page</title>
</head>
<body>
	<h1>중고상품 목록</h1>

	<table border="1" width="90%">
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
				<td>${product.price}</td>
				<td>${product.description}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>