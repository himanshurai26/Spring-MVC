<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ModelView</title>
</head>
<body>
<% String msg = (String)request.getAttribute("msg");
String name = (String)request.getAttribute("name");
%>

<h3><%=msg %></h3>
<h3><%=name %></h3>
</body>
</html>