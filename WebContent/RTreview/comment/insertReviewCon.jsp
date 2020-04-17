<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="review.reviewDAO" %>
    <%@ page import="java.io.*" %>
    <!-- 파일 이름이 동일한게 나오면 자동으로 다른걸로 바꿔주는 것 cos.jar필요 -->
    <%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
	<!-- 실제로 파일 업로드 하기 위한 클래스 -->
	<%@ page import="com.oreilly.servlet.MultipartRequest" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<%@ page import="java.util.*" %>
	<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%	 
	String realFolder = "";
	String filename1 = "";
	int maxSize = 1024*1024*5;
	String encType = "euc-kr";
	String savefile = "image"; //파일을 저장할 폴더
	ServletContext scontext = getServletContext();
	realFolder = scontext.getRealPath(savefile);
	
	try{
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	Enumeration<?> files = multi.getFileNames();
	String file1 = (String)files.nextElement();
	filename1 = multi.getFilesystemName(file1);
	} catch(Exception e){
		e.printStackTrace();
	}
	
	String fullpath = realFolder + "\\" + filename1;
	
	/*
	//해당 폴더에 이미지 저장
	String uploadDir = 
	"E:/12월_자바기반 웹 개발자 과정_오후/workspacejsp/reviewTalk/WebContent/RTreview/image";
	//총 100M 까지 저장 가능
	String encoding = "UTF-8";
	
	//사용자가 전송한 파일정보 토대로 업로드 장소에 파일 업로드 수행할 수 있게 함
	MultipartRequest multipartRequest
	= new MultipartRequest(request,uploadDir,maxSize,encoding,
			new DefaultFileRenamePolicy());
	
	// 중복된 파일 이름이 있기에 fileRealName이 실제로 서버에 저장된 경로
	// fileName은 사용자가 올린 파일의 이름
	// 이전 클래스 name = "file" 실제 사용자가 저장한 실제 네임
	String fileName = multipartRequest.getOriginalFileName("file");
	// 실제 서버에 업로드 된 파일시스템 네임
	String fileRealName =  multipartRequest.getFilesystemName("file");
	
	//디비에 업로드 메소드
	new reviewDAO().upload(fileName, fileRealName);
	*/
	%>
<img alt="" src="<%=fullpath%>" width=512 height=384>
</body>
</html>