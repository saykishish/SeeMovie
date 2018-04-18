<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String method = request.getMethod();
	out.println(method);
	
	HttpServletRequest req = 
		(HttpServletRequest)pageContext.getRequest();
	out.println(req.getMethod());
	
	out.println(req == request);
	
	String ip = request.getRemoteAddr();
	out.println(ip + "<br>");
	
	String query = request.getQueryString();
	out.println(query);
	
%>
<hr />
Method: ${pageContext.request.method }<br>


</body>
</html>