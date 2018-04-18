<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
//String[] a =(String[])session.getAttribute("seat");

String qwe = (String)session.getAttribute("snoopy");

//String[] name= (String[]) session.getAttribute("seat");	
//out.print("記憶體的位子:"+ a);//這就會是記憶體的位子  ， 因為他是物件，物件直接印出 就會印出記憶體位子

String r = "Your";
pageContext.setAttribute("h", r);

String tickek = (String)session.getAttribute("myTicket");
out.print("d_check.jsp:getAttribute:tickek:" + tickek);
%>    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
有沒有電影標題:${snoopy }
<hr>
tickek:${myTicket }
<hr>
pageContext.setAttribute:${h }
<br>這裡有Your
<hr>
test seat為何:${ seat }<br />
就是記憶體的位子
<hr>
<h1>訂單確認</h1>
<hr />

<form action="D_Check" method="get">
	
	<table>
	
			<tr>
				<td>片名:</td>
				<td>多拉A夢</td>
			<tr/>
			<tr>
				<td>片種:</td>
				<td>喜劇片</td>
			<tr/>
			
			<tr>
				<td>日期:</td>
				<td>2018-03-31</td>
			<tr/>
			<tr>
				<td>時間:</td>
				<td>19:30</td>
			<tr/>
			<tr>
				<td>票種:</td>
				<td>全票</td>
			<tr/>
			<tr>
				<td>張數:</td>
				<td>2</td>
			<tr/>
			<tr>
				<td>座位:</td>
				<td><c:forEach var="x" items="${ seat }">${x } </c:forEach></td>
				
			<tr/>
	
		
	</table>
	
<hr/>
<input type="submit" value="確認"/>

</form>






</body>
</html>