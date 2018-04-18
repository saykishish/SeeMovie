<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.Member.Member" %>
<!-- 百分比是給java看的。標籤要用標籤的useBean他才看得懂 -->

<jsp:useBean id="memberd" class="tw.Member.Member"></jsp:useBean>
<jsp:setProperty property="phone" name="memberd" value="0943-456-789"/>
<jsp:setProperty property="name" name="memberd" value="Tify"/>

<!-- jsp:setProperty property="namd" name="member" value="Tify" -->
<!-- Cannot find any information on property [namd] in a bean of type [tw.Member.Member] -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

你好,
<jsp:getProperty property="name" name="memberd"/>
<!-- 這裡的name 要去認識到 useBean 的id="memberd" 才會認識 -->
<jsp:getProperty property="phone" name="memberd"/>
</body>
</html>