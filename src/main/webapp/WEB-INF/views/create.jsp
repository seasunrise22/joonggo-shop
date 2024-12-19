<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�߰�ǰ ���</title>
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

button {
	font-size: 18px;
	padding: 10px 20px;
}

.button-container {
	display: flex;
	justify-content: space-between;
}

input, textarea {
	width: 100%;
	box-sizing: border-box;
}
</style>
</head>
<body>
	<h1>�߰��ǰ ���</h1>
	<form id="productForm">
		<table border="1">
			<tr>
				<td colspan="4">
					<div class="button-container">
						<!-- HTTP GET ��û�� ���� /creates ��η� �̵��ϰ� �˴ϴ�. �̴� ����ڰ� URL�� ���� �Է��Ͽ� �̵��ϴ� �Ͱ� �����մϴ�. -->
						<button type="button" style="text-align: left;"
							onclick="location.href='/'">���ư���</button>
						<button type="button" onclick="submitForm()" style="text-align: right">����</button>
					</div>
				</td>
			</tr>
			<tr>
				<td>��ǰ��</td>
				<td><input type="text" name="name" required></td>
				<td>����</td>
				<td><input type="number" name="price" required></td>
			</tr>
			<tr>
				<td>����</td>
				<td colspan="3"><textarea name="description" rows="10"
						required></textarea></td>
			</tr>
		</table>
	</form>

	<script>
		function submitForm() {
			const form = document.getElementById('productForm');
			const formData = new FormData(form);
			
			const jsonData = {};
			formData.forEach((value, key) => {
				jsonData[key] = value;
			});
			
			console.log(JSON.stringify(jsonData));
			
			fetch('/createProducts', {
				method: 'POST',
				headers: {
					'Content-Type': 'application/json',
				},
				body: JSON.stringify(jsonData)
			})
			.then(response => {
				if(response.ok) {
					return response.json();
				} else {
					throw new Error('���� ���� 200 �ƴ�!');
				}
			})
			.then(data => {
				console.log('Fetch ����!: ', data);
				window.location.href = '/';
			})
			.catch((error) => {
				console.error('Fetch ����: ', error);
			});
		}
	</script>
</body>
</html>