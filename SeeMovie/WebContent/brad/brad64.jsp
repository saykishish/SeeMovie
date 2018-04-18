<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.MyAPI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	String[] names = {"Fifi", "Imi", "Baby"};
	request.setAttribute("famile", names);
	
	LinkedList<String> list = new LinkedList<>();
	list.add("ASD");
	list.add("BVC");
	request.setAttribute("lists", list);
	
	pageContext.setAttribute("one", 111);
	

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Name1:${famile[0] }<br />
List1: ${lists[param.x] }<br>
PageContent: ${pageScope.one }<br />
Lottery: ${MyAPI.getLottery() }<br />
Say Hello: ${MyAPI.sayHello(param.name) }
</body>
</html>