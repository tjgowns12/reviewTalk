<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
nav .mylist{order:1;list-style: none;}
.na li a:link { color:black; text-decoration: none;}
.na li a:visited { color: black; text-decoration: none;}
.na li a:hover { color: blue; text-decoration: none;}
.span{padding-right:300px; }
.section{padding-top: 60px; }
#wrap{width: 1000px; margin: 0 auto; padding-top: 100px;display: flex;}

</style>
</head>
<body>
<c:import url="../base/header.jsp"/>
<div id="wrap">

<nav class="na" style="float: left; padding-right: 50px;" >
<ul class="mylist">
<li><h1 style="font-size: 40px;">고객센터</h1></li>
<li style="font-size: 25px;padding-bottom: 20px;"><a href="custom_view.jsp">공지사항</a></li>
<li style="font-size: 25px;padding-bottom: 20px;"><a href="QnA.jsp">1:1문의</a></li>
<li style="font-size: 25px;padding-bottom: 20px;"><a href="#">이벤트</a></li>
</ul>
</nav>


<section class="section">
<h1>공 지 사 항</h1>
<hr>
<p>
<table>
<td><span class="span">No.</span></td>
<td><span class="span">제목</span></td>
<td><span>등록일</span></td>
</table>
</p>
<hr>
<!--내용  -->
<div>
내용


</div>
<!-- 내용 -->
<div align="right"style="margin-bottom: 300px;">
<br>
<hr>
<input type="button" value="등록하기" style="background-color: skyblue;border-radius:10px;outline: 0;"> 
</div>
</section>

</div>
<c:import url="../base/footer.jsp"/>


</body>
</html>