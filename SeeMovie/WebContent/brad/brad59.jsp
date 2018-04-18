<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  JSTL -->
<jsp:directive.page import="tw.Member.Member" />
<%
	Member member = new Member();
	member.setPhone("0960-345-342"); member.setName("ioio");
	//後端的Member 還要Override toString才可以，不然會印出記憶體的位子
%>
<jsp:declaration>
	int i; String name;
</jsp:declaration>

<jsp:scriptlet>
	i = 967456789;
	name = "Fifi bite Imi";
	out.print("scriptlet:" + name + ":" + i);
	
</jsp:scriptlet>

<hr>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Member toString: <jsp:expression>member</jsp:expression><br />
<jsp:text>Hello, World</jsp:text><br />
test: <% out.print(member); %><br/>
test2: ${param.member}


</body>
</html>