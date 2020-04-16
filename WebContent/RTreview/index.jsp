<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	table{border-spacing:50px;}
	img{width:200px; height:200px;}
	.title{text-align: left; width:900px; margin-left:auto; margin-right: auto;}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/base/header.jsp"/>
</head>
<body>

<div align="center">
	<div class="title">
		<h2>실시간 리뷰</h2>
		<p style="font-size: 12px;">jsp 를 통해 저희들이 나름 작성해본 리뷰입니다.</p>
	</div>
	<br>
<table>
<tr>
<td><a href="page/skinnydrawing.jsp">
<img src="/reviewTalk/RTreview/image/sample1.jpg"><br>
<font>스키니드로잉 아이라이너</font>
</a></td>

<td><a href="#">
<img src="/reviewTalk/RTreview/image/sample2.jpg"><br>
<font>아울러 닭발 무뼈닭발</font>
</a></td>

<td><a href="#">
<img src="/reviewTalk/RTreview/image/sample3.jpg"><br>
<font>[원마이] 마사지건</font>
</a></td>

<td><a href="#">
<img src="/reviewTalk/RTreview/image/sample4.jpg"><br>
<font>처음효소 알파그린</font>
</a></td>

</tr>
<tr>
<td><a href="#">
<img src="/reviewTalk/RTreview/image/sample5.jpg"><br>
<font>맥스프리즈 스포츠겔</font>
</a></td>

<td><a href="#">
<img src="/reviewTalk/RTreview/image/sample6.jpg"><br>
<font>죽력원 aizen salt</font>
</a></td>

<td><a href="#">
<img src="/reviewTalk/RTreview/image/sample7.jpg"><br>
<font>살림인 천연100% 주방세제</font>
</a></td>

<td><a href="#">
<img src="/reviewTalk/RTreview/image/sample8.jpg"><br>
<font>뷔에르엔 오르셀 치약</font>
</a></td>
</tr>

<tr>
<td><a href="#">
<img src="/reviewTalk/RTreview/image/sample9.jpg"><br>
<font>꽃뫼 맥문동차</font>
</a></td>
<td><a href="#">
<img src="/reviewTalk/RTreview/image/sample10.jpg"><br>
<font>초황 오리 간장불고기</font>
</a></td>
<td><a href="#">
<img src="/reviewTalk/RTreview/image/sample11.jpg"><br>
<font>피톤치드 코끼리 스프레이</font>
</a></td>
<td><a href="#">
<img src="/reviewTalk/RTreview/image/sample12.jpg"><br>
<font>말라이트 브이차</font>
</a></td>
</tr>
</table>
</div>




<jsp:include page="/base/footer.jsp"/>
</body>
</html>