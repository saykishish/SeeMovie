<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table width="80%" border="1">
你好桌子:<br>
<%

	for(int i=0; i<2; i++){
		out.print("<tr>");
			
				out.println("<td>");
					out.print("狗狗");
				out.println("</td>");
			
		out.print("</tr>");
		
	}

%>

</table>

</body>
</html>