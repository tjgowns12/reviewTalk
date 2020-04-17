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
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<style type="text/css">
nav .mylist{order:1;list-style: none;}
.na li a:link { color:black; text-decoration: none;}
.na li a:visited { color: black; text-decoration: none;}
.na li a:hover { color: blue; text-decoration: none;}
a:link{color:black; text-decoration: none;}
a:hover{color: blue; text-decoration: none;}
.span{padding-right:300px; }
.section{padding-top: 60px;}
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


<section class="section"style="width: 700px;">
<h1 style="font-weight: 1">1 : 1 문의</h1>
<p>가입을 하신 분들은 로그인을 하시고 다시 와 주기시 바랍니다.</p>
<p>개인정보 보호를 위해 문의 답변 후 1주일이 지난 질문은 삭제됩니다.</p>
<form>
<table>
<tr>
<td><input type="text" name="id" placeholder="아이디" style="height:20px;"></td>
<td><input type="button" value="검색" style="width: 150px; height:30px; background-color: skyblue;"class="btn btn-default pull-right"></td>
<td><input type="button" onclick="location.href='write_view.jsp'" value="등록" style="width: 150px;height:30px;background-color: lightgray;"class="btn btn-default pull-right"></td>
<tr>
</table>


</form>
<hr>
<div>
<table class="table table-hover">
<jsp:useBean id="dao" class="review.customDAO"/>
<c:set var="totalPage" value="${dao.getTotalPage() }"/>
<thead>
<tr>
<th>No.</th><td>제목</td><td>등록일</td><td>아이디</td>
</tr>
</thead>
<tbody>
<c:choose>
<c:when test="${listDto.size()!=0 }">
<c:set var="listDto" value="${dao.list(param.start) }"/>
<c:forEach var="dt" items="${listDto }">
<tr>
<td>${dt.customNum }</td>
<td><a href="#">${dt.title }</a></td>
<td>${dt.savedate }</td>
<td>${dt.writer }</td>
</tr>
</c:forEach>
</c:when>
<c:otherwise>
<tr>
<th colspan="4">등록된 정보가 없습니다.</th>
</tr>
</c:otherwise>
</c:choose>
</tbody>
</table>
<c:choose>
		<c:when test="${param.start==null }">
		<c:set var="start" value="1"/>
		</c:when>
		<c:otherwise>
		<c:set var="start" value="${param.start }"/>
		</c:otherwise>
</c:choose>

<div class="text-center">
<ul class="pagination">
<c:choose>
		<c:when test="${start>1 }">
		<li><a href="QnA.jsp?start=${start-1 }" >이전</a></li>
		</c:when>
		<c:otherwise>
		<li><a href="QnA.jsp?start=${start}" >이전</a></li>
		</c:otherwise>
</c:choose>

<c:forEach begin="1" end="${totalPage }" step="1" var="cnt">
<li><a href="QnA.jsp?start=${cnt }">${cnt }</a></li>
</c:forEach>
<c:choose>
		<c:when test="${start<totalPage }">
		
		<li><a href="QnA.jsp?start=${start+1 }" >다음</a></li>
		</c:when>
		<c:otherwise>
		<li><a href="QnA.jsp?start=${start}" >다음</a></li>	
		</c:otherwise>
</c:choose>




</ul>
</div>



</div>
</section>

</div>
<c:import url="../base/footer.jsp"/>


</body>
</html>