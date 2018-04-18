<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
String[] movieName = (String[])session.getAttribute("movieName");
//左邊是字串 = 右邊是物件  -> 不能直接將物件指派給字串，所以把物件強制轉型為字串

out.print(movieName); //這裡是 記憶體的位子 [Ljava.lang.String;@38a639b8

pageContext.setAttribute("movieName2", movieName);
%>

<body>
<h1>電影選單</h1>
<hr>
<form action="B_MovieStore" method="get">
	
	<c:forEach var="x" items="${ movieName2 }">您剛剛選擇要看的電影:${x }<br /> </c:forEach>
	
	請輸入訂票張數:<input type="text" name="ticket"/>
	
<hr>
	<input type="submit" value="送出"/>
</form>

</body></html>