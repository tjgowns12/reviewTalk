<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="dao" class="user.userDAO"/>
    <%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    int result = dao.loginChk(id, pw);
    if(result == -1){%>
    <script>
    	alert("아이디가 존재하지 않습니다.");
    	location.href="login.jsp";
    </script>
    <%}else if(result ==0){ %>
    <script>
    	alert("비밀번호가 틀렸습니다.");
    	location.href="login.jsp";
    </script>
    <%}else{
    	session.setAttribute("userId", id);
    	response.sendRedirect("../base/main.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>