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

List<String> tempMapListTItle = new ArrayList<>();
List<String> tempMapListYear = new ArrayList<>();
List<String> tempMapListImg = new ArrayList<>();
//List<ComicVo> tempMapListYear = new ArrayList<>();
//List<ComicVo> tempMapListImg = new ArrayList<>();

//主要問題是你的jsp那邊。你取了三個list。我假設你後面的三個list各只放了一個value。
//今天用一個物件去包裝就是妳直接把所有資料都包裝成一個物件。


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
		ComicVo dataTitle = new ComicVo();
		ComicVo dataYear = new ComicVo();
		ComicVo dataImg = new ComicVo();
		
		id = rs.getString("id");
		bdDataTitle = rs.getString("title");
		bdDataYear = rs.getString("year");
		bdDataImg = rs.getString("imgLink");
	
		//data.nameYeatImgtoString();		

		//out.print(imgLink); 
		dataTitle.setName(bdDataTitle);
		dataYear.setYear(bdDataYear);
		dataImg.setImg(bdDataImg);
		
		//dataTitle.nametoString();
		//dataYear.nameYeatImgtoString();
		//dataImg.nameYeatImgtoString();
//		dataYear.toString2();
//		dataImg.toString3();

//		tempMapListTItle.add( dataTitle.nametoString() );
		
		//tempMapListTItle.add(dataTitle);
//		tempMapListYear.add(dataYear.yeartoString());
//		tempMapListImg.add(dataImg.imgtoString());
			
	}//while loop
	
	//dataTitle.nameYeatImgtoString();	
	
	pageContext.setAttribute("myTempMapListTItle", tempMapListTItle);
	pageContext.setAttribute("myTempMapListYear", tempMapListYear);
	pageContext.setAttribute("myTempMapListImg", tempMapListImg);

//	dataYear.toString2();
//	dataImg.toString3();

	
}catch(Exception e){
	System.out.println(e.toString());
}//try...catch

%>

<c:forEach items="${myTempMapListTItle }" var="x">
	${x }<br>
</c:forEach>
<hr>
<c:forEach items="${myTempMapListYear }" var="y">
	${y }<br>
</c:forEach>
<hr>
<c:forEach items="${myTempMapListImg }" var="z">
	${z }<br>
</c:forEach>
<hr>

<h1>電影資訊</h1>
<div><input type="text"/>搜尋電影</div>
<hr>

<form action="A_Jump" method="get">

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