<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<style type="text/css">
	table td {padding-right: 40px;}
</style>
</head>
<body>
	<jsp:include page="../base/header.jsp" />
	<div align="center" style="width: 1000px; margin: 0 auto;">
		<h2 style="margin-top: 100px;">리뷰톡 회원가입</h2>
		<form action="joinChk.jsp">
			<fieldset style="width: 500px;">
				<legend>Member Information</legend>
				<table style="height: 500px;">
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id" placeholder="아이디" style="width: 250px; height: 25px;"></td>
					</tr>
					<tr>
						<td rowspan="3">비밀번호</td>
						<td><input type="text" name="pw" placeholder="비밀번호(최소 8자 이상)" style="width: 250px; height: 25px;"></td>
					</tr>
					<tr>
						<td><input type="text" name="pwChk" placeholder="비밀번호 확인" style="width: 250px; height: 25px;"></td>
					</tr>
					<tr>
						<td colspan="2"><label style="color: red;"></label></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" placeholder="이름" style="width: 250px; height: 25px;"></td>
					</tr>
					<tr>
						<td>휴대전화</td>
						<td><input type="text" name="phone" placeholder="휴대전화" style="width: 250px; height: 25px;"></td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td><input type="text" name="nick" placeholder="닉네임" style="width: 250px; height: 25px;"></td>
					</tr>
					<tr>
						<td>출생년도</td>
						<td>
							<select size="1" name="born" style="width: 173px; height: 25px;">
								<option selected>선택하세요
								<option value="1990">1990
								<option value="1991">1991
								<option value="1992">1992
								<option value="1993">1993
								<option value="1994">1994
								<option value="1995">1995
								<option value="1996">1996
								<option value="1997">1997
								<option value="1998">1998
								<option value="1999">1999
								<option value="2001">2001
								<option value="2002">2002
								<option value="2003">2003
								<option value="2004">2004
								<option value="2005">2005
								<option value="2006">2006
								<option value="2007">2007
								<option value="2008">2008
								<option value="2009">2009
								<option value="2010">2010
							</select>
						</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>
							<select size="1" name="addr" style="width: 173px; height: 25px;">
								<option selected>선택하세요
								<option value="서울특별시">서울특별시
								<option value="부산광역시">부산광역시
								<option value="대구광역시">대구광역시
								<option value="인천광역시">인천광역시
								<option value="광주광역시">광주광역시
								<option value="대전광역시">대전광역시
								<option value="울산광역시">울산광역시
								<option value="세종특별자치시">세종특별자치시
								<option value="경기도">경기도
								<option value="강원도">강원도
								<option value="충청북도">충청북도
								<option value="충청남도">충청남도
								<option value="전라북도">전라북도
								<option value="전라남도">전라남도
								<option value="경상북도">경상북도
								<option value="경상남도">경상남도
								<option value="제주특별자치도">제주특별자치도
							</select>
						</td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
							<input type="radio"	name="gender" value="man" checked="checked">남자
							<input type="radio"	name="gender" value="woman">여자
						</td>
					</tr>
					<tr>
						<th colspan="2">
							<input type="submit" value="회원가입">
							<input type="button" value="취소" onclick="history.back()">
						</th>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>