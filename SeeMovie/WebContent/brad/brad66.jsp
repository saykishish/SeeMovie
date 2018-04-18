<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:catch var="errorMsg">
	<%
	String num = request.getParameter("num");
	int n = Integer.parseInt(num);
	out.println(n);
	%>
	
</c:catch>
Hello, World<br />
${errorMsg }

<c:if test='${param.num != 333 }' var="result">
	hello your pi pi
</c:if>
${result }

</body>
</html>