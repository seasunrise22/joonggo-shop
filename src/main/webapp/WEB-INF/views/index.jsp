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
	<h1>�߰��ǰ ���</h1>

	<table border="1" width="90%">
		<tr>
			<th>��ȣ</th>
			<th>��ǰ��</th>
			<th>����</th>
			<th>����</th>
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