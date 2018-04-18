<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="theMember" class="tw.Member.Member" />
<jsp:setProperty property="name" name="theMember" value='${param.name }'/>
<jsp:setProperty property="phone" name="theMember" value='${param.phone }'/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
你好,
${theMember.name}
${theMember.phone}
</body>
</html>