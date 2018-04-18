<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%//taglib要帶過來 不然core都不能用 %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
//String[] b = (String[])session.getAttribute("movieName");
//String[] d = (String[])session.getAttribute("theImg");
//左邊是字串 = 右邊是物件  -> 不能直接將物件指派給字串，所以把物件強制轉型為字串
//pageContext.setAttribute("movieName2", b);
request.getAttribute("tempMapList");
%>

<hr>
<body>
<h1>電影選單</h1>
<hr>
<form action="B_MovieStore" method="get">
	
	您剛剛選擇要看的電影:
	<c:forEach items="${tempMapList }" var="y">${y.name } </c:forEach>
	<br>
	那個電影的照片:
	<c:forEach items="${tempMapList}" var="w">${w.year } </c:forEach>
	<br>
	請輸入訂票張數:<input type="text" name="ticket" value="使用者輸入的張數"/>
	
<hr>
	<input type="submit" value="送出"/>
</form>

</body></html>