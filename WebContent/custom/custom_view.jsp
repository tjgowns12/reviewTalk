<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">

<style type="text/css">
nav .mylist{order:1;list-style: none;}
a:link { color:black; text-decoration: none;}
a:visited { color: black; text-decoration: none;}
a:hover { color: blue; text-decoration: none;}
.span{padding-right:300px; }
.section{padding-top: 60px;}
.section a{text-decoration: none;}

#wrap{width: 1000px; margin: 0 auto; padding-top: 100px;display: flex;}

</style>
</head>
<body>
<c:import url="../base/header.jsp"/>
<div id="wrap" style="padding-bottom: 300px;">

<nav class="na" style="float: left; padding-right: 50px;" >
<ul class="mylist">
<li><h1 style="font-size: 40px; font-weight: 2;">고객센터</h1></li>
<li style="font-size: 25px;padding-bottom: 20px;"><a href="custom_view.jsp">공지사항</a></li>
<li style="font-size: 25px;padding-bottom: 20px;"><a href="QnA.jsp">1:1문의</a></li>
<li style="font-size: 25px;padding-bottom: 20px;"><a href="#">이벤트</a></li>
</ul>
</nav>


<section class="section" style="width: 700px;">
<h1 style="font-weight: 1" >공 지 사 항</h1>

<p>
<table class="table table-hover">
<thead>
<tr>
<th>No.</th><th>제목</th><th>등록일</th>
</tr>
</thead>
<tbody>
<tr>
<td >1</td><td><a href="#">이제 곧 땡땡이 출시 됩니다.</a></td><td>2020-04-16</td>
</tr>
<tr>
<td>2</td><td><a href="#">Bootstrap 강좌 입니다</a></td><td>2020-04-14</td>
</tr>




</tbody>

</table>
<div class="text-center">
<ul class="pagination">
<li><a href="#">1</a></li>
<li><a href="#">2</a></li>
<li><a href="#">3</a></li>
</ul>
</div>



<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>




</div>
</section>

</div>
<c:import url="../base/footer.jsp"/>


</body>
</html>