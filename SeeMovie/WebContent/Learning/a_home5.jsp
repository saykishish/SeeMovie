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
String dataTitle = "";
String dataYear = "";
String dataImgLink = "";
ResultSet rs = null;

List<ComicVo> tempMapList = new ArrayList<>();
List<ComicVo> tempMapList2 = new ArrayList<>();
List<ComicVo> tempMapList3 = new ArrayList<>();


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
		ComicVo data1 = new ComicVo();
		ComicVo data2 = new ComicVo();
		ComicVo data3 = new ComicVo();
		
		id = rs.getString("id");
		dataTitle = rs.getString("title");
		dataYear = rs.getString("year");
		dataImgLink = rs.getString("imgLink");

		
//		out.print(id);
//		out.print(":" + title); 
//		out.print(year + "<br>"); 

		//out.print(imgLink); 
		data1.setName(dataTitle);
		data2.setYear(dataYear);
		data3.setImg(dataImgLink);
		
		tempMapList.add(data1);
		tempMapList2.add(data2);
		tempMapList3.add(data3);
		
		pageContext.setAttribute("MyList", tempMapList);
		pageContext.setAttribute("MyListYear", tempMapList2);
		pageContext.setAttribute("MyListImg", tempMapList3);
		
//	pageContext.setAttribute("ids", id);
//	pageContext.setAttribute("titles", title);
//	pageContext.setAttribute("years", year);
//	pageContext.setAttribute("imgLinks", imgLink);

//	request.setAttribute("ddd", year);
		
	}
	


	
}catch(Exception e){
	System.out.println(e.toString());
}//try...catch

%>
<hr>
MyList:<br>
${MyList }
<hr>
MyListYear:<br>
${MyListYear }
<hr>
MyListImg:<br>
${MyListImg }
<hr>
<h1>電影資訊</h1>
<div><input type="text"/>搜尋電影</div>
<hr>
foreach:<br>
	<c:forEach var="detail" items="${MyList}">
		${detail }
	</c:forEach>
<hr>
有沒有呢?<br>
<c:out value="${ddd}" /><br>

<hr>

<form action="A_Jump" method="get">

<table>
	<tr>
		<td>
			<a href="https://chinesedora.com/movie/35.htm">
				<img alt="ad" src="pics/doraemon01.jpg" height="200"><br>
				<div><% while(rs.next()) { id = rs.getString("id"); out.print(id); }%></div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>
		
		<td>
			<a href="https://chinesedora.com/movie/36.htm">
				<img alt="ad" src="pics/doraemon02.jpg" height="200"><br>
				<div>新・のび太の日本誕生</div>
				<div>Year:<%out.print(id); %></div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>
		
		<td>
			<a href="https://chinesedora.com/movie/38.htm">
				<img alt="ad" src="pics/doraemon03.jpg" height="200"><br>
				<div>大雄的金銀島</div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>

		<td>
			<a href="https://chinesedora.com/movie/1.htm">
				<img alt="ad" src="pics/doraemon04.jpg" height="200"><br>
				<div>のび太の恐竜</div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>
		
	</tr>
	
	<tr></tr>

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