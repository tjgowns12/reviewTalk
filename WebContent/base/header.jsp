<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
   .nav{float: right;}
   .nav li{ float:left; list-style: none; margin:1px; padding-right: 30px;}
   .nav li a:link { color:black; text-decoration: none;}
   .nav li a:visited { color: black; text-decoration: none;}
   .nav li a:hover { color: blue; text-decoration: none;}
</style>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>

	<div style="width: 1000px; margin: 0 auto;">
		<header>
			<font style="font-size: 30px; color: blue;">Review-<i>Talk</i></font>
			<nav class="nav">
				<ul>
					<li><a href="../RTreview/index.jsp">실시간 리뷰 </a></li>
					<li><a href="../custom/custom_view.jsp">고객센터 </a></li>
					
					<c:choose>
					<c:when test="${sessionScope.userId ne '' }">
					<li><a href="../userManagement/login.jsp"> 로그인 </a></li>
					</c:when>
					<c:when test="">
					<a href="../userManagement/logout.jsp">로그아웃</a>&nbsp;&nbsp;
					</c:when>
					</c:choose>
					
					<li><a href="../userManagement/join.jsp"> 회원가입</a></li>
				</ul>
			</nav>
			<hr>
		</header>
	</div>

</body>
</html>