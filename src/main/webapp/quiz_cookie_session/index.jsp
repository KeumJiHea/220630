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
		boolean bool = true;
		Cookie[] cookieArr = request.getCookies();
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				if(c.getName().equals("closeNext")){
					bool = false;
				}
			}
		}
	%>
	<%if(bool){%>
		<script type="text/javascript">
			open("popup.jsp", "", "width=300 height=200 top=400, left=1000")
		</script>
	<%}%>
	
	<h1>CARE LAB</h1>
	<h3>저희 사이트에 방문해 주셔서 감사합니다.</h3>
	<% if(session.getAttribute("id")!=null) {%>
	<%=session.getAttribute("id") %>님 로그인 상태입니다.<br>
	<button onclick="location.href='main.jsp'">메인으로 이동</button>
	<%}else{ %>
		<form action="loginChk.jsp" method="post">
			<input type="text" name="id" placeholder="아이디"><br>
			<input type="password" name="pwd" placeholder="비밀번호"><br>
			<button type="submit">로그인</button>
		</form>
	<%} %>
</body>
</html>