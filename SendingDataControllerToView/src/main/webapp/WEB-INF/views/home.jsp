<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
</head>
<body>
<h1>Showing Data in this page Using Model Method Controller to User</h1>

<% 
String name = (String)request.getAttribute("name");
 String age = (String) request.getAttribute("age");
 String city = (String) request.getAttribute("city");
    List<String> friends = (List<String>)request.getAttribute("friend");

%>

<h3>My Name is : <%=name %> </h3>
<h3>My Name is : <%=age %> </h3>
<h3>My Name is : <%=city %> </h3>
<h3>My Friends Name are : <%=friends %></h3>
</body>
</html>