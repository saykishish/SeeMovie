

<%@page import="java.util.*"%>

<%@page import="bean.MemberTest"%>

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

  ArrayList<MemberTest> memberList = new ArrayList<>();

  MemberTest m1 = new MemberTest("Tony", 11);

  memberList.add(m1);

  MemberTest m2 = new MemberTest("Marry", 22);

  memberList.add(m2);

  

  pageContext.setAttribute("members", memberList);
  
  //1. el 的 ${...} 中就是一個物件實體的觀念
  //2. 仔細看一下上段程式, 重點是提供了 getter, 所以可以直接 member.name 或是 member.age

%>

	<table border="1">

      <c:forEach items="${members}" var="bbb">

        <tr>

          <td><c:out value="${bbb.name}" /><td>

          <td><c:out value="${bbb.age}" /><td>
          
        </tr>
         
       </c:forEach>
       
    </table>

</body>
</html>