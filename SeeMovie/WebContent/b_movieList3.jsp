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
String[] b = (String[])session.getAttribute("movieName");
//左邊是字串 = 右邊是物件  -> 不能直接將物件指派給字串，所以把物件強制轉型為字串

out.print("這裡是 記憶體的位子:" + b); //這裡是 記憶體的位子 [Ljava.lang.String;@38a639b8

//pageContext.setAttribute("movieName2", b);
%>
getAttribute:${movieName}
<hr>
<body>
<h1>電影選單</h1>
<hr>
<form action="B_MovieStore" method="get">
	
	您剛剛選擇要看的電影:
	<c:forEach var="y" items="${movieName}">${y } </c:forEach>
	<br>
	請輸入訂票張數:<input type="text" name="ticket"/>
	
<hr>
	<input type="submit" value="送出"/>
</form>

</body></html>