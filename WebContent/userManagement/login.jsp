
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<jsp:include page="../base/header.jsp" />
	<div align="center">
		<form action="loginChk.jsp" method="get">
			<table style="width: 500px; height: 400px; margin: 100px 0;">
				<tr>
					<th><h1>Login</h1></th>
				</tr>
				<tr>
					<td><input type="checkbox" name="keepUser">로그인유지</td>
				</tr>
				<tr>
					<td><input type="text" name="id" placeholder="아이디"
						style="width: 100%; height: 50px;"></td>
				</tr>
				<tr>
					<td><input type="password" name="pw" placeholder="비밀번호"
						style="width: 100%; height: 50px;"></td>
				</tr>
				<tr>
					<th><input type="submit" value="로그인"
						style="width: 100%; height: 50px; display: inline-block;"></th>
				</tr>
				<tr>
					<td><a href="#">아이디 찾기</a> | <a href="#">비밀번호 찾기</a> | <a href="join.jsp">회원가입</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>