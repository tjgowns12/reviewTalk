<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/base/header.jsp"/>
</head>
<body>

<div align="center" style="padding-bottom: 100px;">
<h1>리뷰 작성</h1>
<div style="width: 300px; height:200px; text-align: left;">
<form action="insertReviewCon.jsp" method="post" enctype="multipart/form-data">


<textarea rows="10" cols="40" name="content" placeholder="리뷰할 내용을 이곳에 "></textarea><br><br>
<input type="file" name="file"><br><br>
<input type="submit" value="업로드">

</form>
</div>
</div>

<jsp:include page="/base/footer.jsp"/>
</body>
</html>