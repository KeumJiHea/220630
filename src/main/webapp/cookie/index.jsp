<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	안녕하세요<hr>
	<%
	
		boolean bool = true;
		Cookie[] cookieArr = request.getCookies();
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				out.print("name: " + c.getName() + "<br>");
				out.print("value: " + c.getValue() + "<hr>");
				if(c.getName().equals("testCookie")){
					bool = false;
				}
			}
		}
	
		Cookie cook = new Cookie("testCookie", "myCookie");
		cook.setMaxAge(5);
		response.addCookie(cook);
	%>
	<% if(bool){ %>
		<script type="text/javascript">
			open("popUp.jsp","","width=300, height=200, top=400, left=500")
		</script>
	<%} %>
</body>
</html>