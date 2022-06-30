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
		String id="melonar", pwd="0820";
		String uid = request.getParameter("id");
		String upwd = request.getParameter("pwd");
		
		if(id.equals(uid) && pwd.equals(upwd)){
			session.setAttribute("id", "박유덕");
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>