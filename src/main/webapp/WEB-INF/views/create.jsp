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
	<h1>중고상품 등록</h1>
	<form id="productForm">
		<table border="1">
			<tr>
				<td colspan="4">
					<div class="button-container">
						<!-- HTTP GET 요청을 통해 /creates 경로로 이동하게 됩니다. 이는 사용자가 URL을 직접 입력하여 이동하는 것과 동일합니다. -->
						<button type="button" style="text-align: left;"
							onclick="location.href='/'">돌아가기</button>
						<button type="button" onclick="submitForm()" style="text-align: right">제출</button>
					</div>
				</td>
			</tr>
			<tr>
				<td>물품명</td>
				<td><input type="text" name="name" required></td>
				<td>가격</td>
				<td><input type="number" name="price" required></td>
			</tr>
			<tr>
				<td>설명</td>
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
					throw new Error('서버 응답 200 아님!');
				}
			})
			.then(data => {
				console.log('Fetch 성공!: ', data);
				window.location.href = '/';
			})
			.catch((error) => {
				console.error('Fetch 에러: ', error);
			});
		}
	</script>
</body>
</html>