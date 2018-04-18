<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="bean.ComicVo" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String id = "";
String bdDataTitle = "";
String bdDataYear = "";
String bdDataImg = "";
ResultSet rs = null;

List<ComicVo> tempMapList = new ArrayList<>();


try {
	Properties props = new Properties();
	props.setProperty("user", "root");
	props.setProperty("password", "root");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/movie",props);
	Statement stmt = conn.createStatement();			
	rs = stmt.executeQuery(
		"SELECT id,title,year,imgLink FROM homepage");
			
	while(rs.next()) { 
		ComicVo data = new ComicVo();
		//ComicVo dataTitle = new ComicVo();
		//ComicVo dataYear = new ComicVo();
		//ComicVo dataImg = new ComicVo();
		
		//ComicVo theData = new ComicVo("name","1990","picture");
		
		id = rs.getString("id");
		bdDataTitle = rs.getString("title");
		bdDataYear = rs.getString("year");
		bdDataImg = rs.getString("imgLink");
	
		data.setName(bdDataTitle);
		data.setYear(bdDataYear);
		data.setImg(bdDataImg);
		
			
	}//while loop	
	
	pageContext.setAttribute("myTempMapList", tempMapList);

	
}catch(Exception e){
	System.out.println(e.toString());
}//try...catch

ComicVo theData = new ComicVo("Fredy","1990","https://chinesedora.com/images/97movie.jpg");
tempMapList.add(theData);

%>


<h1>電影資訊</h1>
<div><input type="text"/>搜尋電影</div>
<hr>
你要的圖片:${movie.img }<br>
你要的年份:${movie.year }
喔喔因為要使用for-each裡面宣告的變數才行
<hr>
<form action="A_Jump" method="get">

<table>

	<c:forEach items="${myTempMapList}" var="movie">
		<tr>
			<td>
				<a href="https://chinesedora.com/movie/35.htm">
					<img alt="ad" src="${movie.img }" height="200"><br>
					<div>${movie.name } ${movie.year }</div>
					<input type="checkbox" name="seeMovie"/>
				</a>
			</td>
		</tr>
	 </c:forEach>
	 
</table>

<hr>
多多多:<br>
<table>
<% 
	for (int k=0; k<4; k++){
		out.println("<tr>");
			for (int r=1; r<=4; r++){
				out.println("<td>");
				
				//<c:forEach var="theTitle" items="${MyListTitle }"
						
					out.println("<a href='https://chinesedora.com/movie/35.htm'>");
						out.println("<img alt='ad' src='pics/doraemon01.jpg' height='200'><br>");
						out.println("<div>大雄的恐龍</div>");
						out.println("<input type='checkbox' name='seeMovie'/>");
					out.println("</a>");
					
				//</c:forEach>
				
				out.println("</td>");
			}
		out.println("</tr>");
	}
%>
</table>

<hr>
<!--  
<button onclick="nextPage()">下一頁</button>
<input type="button" value="b_movieList" name="Next Page" />
-->
<button type="submit">Go to next Page</button>


</form>

</body>
</html>