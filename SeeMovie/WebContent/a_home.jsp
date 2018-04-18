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
String bdTitle = "";
String bdYear = "";
String bdImg = "";
ResultSet rs = null;

List<ComicVo> tempMapList = new ArrayList<>();
ComicVo theData = null;


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
		//ComicVo data = new ComicVo();
		
		//ComicVo theData = new ComicVo("name","1990","https://chinesedora.com/images/97movie.jpg");

		id = rs.getString("id");
		bdTitle = rs.getString("title");
		bdYear = rs.getString("year");
		bdImg = rs.getString("imgLink");
		
		//我在這裡一直new new new 物件  然後加加加
		theData = new ComicVo(bdTitle,bdYear,bdImg);
		
		tempMapList.add(theData); //要在這裡重複的迴圈的 把資料放進去 才不會只有最後一筆資料
	
//		data.setName(bdDataTitle); = 下面的  ${movie.img } 這個了
//		data.setYear(bdDataYear);
//		data.setImg(bdDataImg);
		
			
	}//while loop	
	
	pageContext.setAttribute("myTempMapList", tempMapList);

	
}catch(Exception e){
	System.out.println(e.toString());
}//try...catch




%>


<h1>電影資訊</h1>
<div><input type="text"/>搜尋電影</div>
<hr>
<form action="A_Jump" method="get">

<table>

	<c:forEach items="${myTempMapList}" var="movie">
		<tr>
			<td>
				<a href="https://chinesedora.com/movie/35.htm">
					<img alt="ad" src="${movie.img }" height="200" name="theImg" value="${movie.img }">
					<div>${movie.name } ${movie.year }</div>
					<input type="checkbox" name="seeMovie" value="${movie.name }"/>
				<!--  	<input type="hidden" name ="theImg" value="${movie.img }"/>-->
				</a>
			</td>
		</tr>
				
	 </c:forEach>
	 
</table>


<hr>
<button type="submit">Go to next Page</button>


</form>


</body>
</html>