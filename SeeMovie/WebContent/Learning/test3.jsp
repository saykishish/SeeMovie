<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

</head>

<body>

<%

  // Create an ArrayList with test data

  ArrayList movieList = new ArrayList();

  Map movie1 = new HashMap();

  movie1.put("name", "movie1");

  movie1.put("year", "2015");

  movie1.put("img", "http://www.iii.org.tw");

  movieList.add(movie1);



  Map movie2 = new HashMap();

  movie2.put("name", "777yyyuuu");

  movie2.put("year", "2016");

  movie2.put("img", "http://www.iii.org.tw");
  
  movie2.put("dfg", "787878");

  movieList.add(movie2);





  pageContext.setAttribute("movies", movieList);

%>

	<table border="1">

      <c:forEach items="${movies}" var="movie">

        <tr>

          <td><c:out value="${movie.name}" /><td>

          <td><c:out value="${movie.year}" /><td>

          <td><c:out value="${movie.img}" /><td>
          
          <td><c:out value="${movie.dfg}" /><td>

        </tr>

      </c:forEach>

	</table>







</body>

</html>