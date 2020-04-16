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
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/site.css">
<style type="text/css">
nav .mylist{order:1;list-style: none;}
.na li a:link { color:black; text-decoration: none;}
.na li a:visited { color: black; text-decoration: none;}
.na li a:hover { color: blue; text-decoration: none;}
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
<script type="text/javascript">
function sub(){
	
	
	fo.submit();
	alert("문의 완료")
}


</script>
<form action="#" id="fo">
<table>
<tr>
<td><font size="2em" color="yellow;">*</font><font size="4em">문의제목&nbsp;</font></td>
<td><input type="text" style="width: 600px; height: 25px;" placeholder="제목을 입력해주세요."></td>
</tr>
</table>
<hr color= "black;">
<table>
<tr>
<td><font size="2em" color="yellow;">*</font><font size="4em">문의 내용</font></td>
<td><textarea style="width: 600px; height: 400px;"></textarea></td>
</tr>
<tr>
<td></td>
<td align="center"><button type="button"  onclick="#" class="btn btn-warning btn-sm">문의 접수</button></td>
</tr>
</table>
</form>
</section>
</div>

<c:import url="../base/footer.jsp"/>


</body>
</html>