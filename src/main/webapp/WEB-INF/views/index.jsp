<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Index Page</title>
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
	th { /* ��ȣ */
		width: 10%
	}
	th:nth-child(2) { /* ��ǰ�� */
		width: 30%
	}
	th:nth-child(3) { /* ���� */
		width: 10%
	}
	th:nth-child(4) { /* ���� */
		width: 50%
	}
</style>
</head>
<body>
	<h1>�߰��ǰ ���</h1>

	<table border="1">
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
				<td><fmt:formatNumber value="${product.price}" type="number" pattern="#,###"></fmt:formatNumber>��</td>
				<td>${product.description}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>