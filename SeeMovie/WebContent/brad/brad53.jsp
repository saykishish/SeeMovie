<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	//接收過來的字串 把他們轉成整數 來做運算
	int result = Integer.parseInt(x) + Integer.parseInt(y);
	out.print(x + "+" + y + "=" + result);


%>