<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.slider').bxSlider({
    	auto:true,
    	speed:500,
    
    });
  });
  

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="header.jsp"/>

</head>
<body>
<table align="center">
<tr>
<td><input type="text" placeholder="브랜드 제품명으로 검색" style="border-radius:10px; width: 300px;height: 20px;" ></td>
<td><a href="#"><img src="../research.png"></a></td>
</tr>
</table>
<div style="width: 900px; margin: 0 auto;">
<div class="slider" align="center">
<div><img src="../ex01.png" style="width: 800px;"></div>
<div><img src="../ex02.png" style="width: 800px;"> </div>
</div>
</div>
<hr>
<font style="font-size: 16px; padding-left: 30px">추천 캠페인</font>
<hr>
<div align="center">
<table>
<tr>
<td><a href="#"><img alt="" src="/Review.talk/image/image1.png"><br>
[로그네이처]<br><font style="font-size: 10px;">로그 허니부쉬 + 가르시니아 다이어트 젤리</font><hr>
</a></td>

<td><a href="#"><img alt="" src="/Review.talk/image/image2.png"><br>
[올바른 한라봉]<br><font style="font-size: 10px;">올바른 한라봉 선물세트 블로그체험단!</font><hr>
</a></td>

<td><a href="#"><img alt="" src="/Review.talk/image/image3.png"><br>
[에스폴리오]<br><font style="font-size: 10px;">깨끗한피부 딸기 쫀쪼니 필 오프 코팩</font><hr>
</a></td>
</tr>


</table>
</div>





<c:import url="footer.jsp"/>
</body>
</html>