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
</head>
<body>
<c:import url="header.jsp"/>
<div style="width: 900px; margin: 0 auto;">
<div class="slider" align="center">
<div><img src="../ex01.png" style="width: 800px;"></div>
<div><img src="../ex02.png" style="width: 800px;"> </div>
</div>
</div>
<table align="center">
<tr>
<td><img src="../sales1.png"></td><td><img src="../sales1.png"></td><td><img src="../sales1.png"></td>
</tr>



</table>





<c:import url="footer.jsp"/>
</body>
</html>