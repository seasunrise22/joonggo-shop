<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ������</title>
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
	<h1>�߰�ǰ ����</h1>
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
					<!-- HTTP GET ��û�� ���� /creates ��η� �̵��ϰ� �˴ϴ�. �̴� ����ڰ� URL�� ���� �Է��Ͽ� �̵��ϴ� �Ͱ� �����մϴ�. -->
					<button type="button" style="text-align: left;"
						onclick="location.href='/'">���ư���</button>
				</div>
			</td>
		</tr>
		<tr>
			<th>��ǰ��ȣ</th>
			<td>${product.id}</td>
			<th>��ǰ��</th>
			<td>${product.name}</td>
			<th>����</th>
			<td><fmt:formatNumber value="${product.price}" type="number"
						pattern="#,###"></fmt:formatNumber>��</td>
		</tr>
		<tr>
			<th colspan="2">����</th>
			<td colspan="4" style="text-align: left;">${product.description}</td>
		</tr>
	</table>
</body>
</html>