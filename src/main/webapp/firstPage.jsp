<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>
	page: <%= pageContext.getAttribute("name") %><br>
	request: <%= request.getAttribute("name") %><br>
	session: <%= session.getAttribute("name") %><br>
	<!-- session은 웹브라우저가 살아있는 동안 유지되는 값 -->
	application: <%= application.getAttribute("name") %><br>
	<!-- application은 서버가 살아있는 동안 유지되는 값 -->
<%-- 	<%
		request.getRequestDispatcher("secondPage.jsp")
	    /* 해당하는 페이지로 바로 이동시켜줌 */	.forward(request, response);
	
	%> --%>	
	
	<hr>
	<a href="secondPage.jsp">secondPage.jsp</a>
</body>
</html>