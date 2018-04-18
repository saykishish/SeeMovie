<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table width="100%" border="1">
<%
	for (int k=0; k<4; k++){
		out.println("<tr>");
		for (int j=2; j<=5; j++){
			out.println("<td bgcolor='" + ( (k+j) % 2 != 0 ? "yellow" : "pink") + "'>");
			int newj = j+k*4;
			for (int i=1; i<=9; i++){
				int r = newj * i;
				out.println(newj + " x " + i + "= " + r + "<br>");
			}
			out.println("</td>");
		}
		out.println("</tr>");
	}
%>
</table>

</body>
</html>