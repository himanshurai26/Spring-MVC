<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "org.hibernate.Session" %>
    <%@page import ="com.hibernate.helper.FactoryProvider" %>
    <%@page import="org.hibernate.Query" %>
    <%@page import="com.hibernate.entities.NoteBook" %>
    <%@page import= "java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes: Note Taker</title>
<%@include file = "common_css_js.jsp" %>
</head>
<body>
<div class="container-fluid p-0 m-0">
    <%@include file = "navbar.jsp" %>
    
    </div>
    <div class="container mt-2">
    <h1 class="text-uppercase mb-4">All Notes</h1>
    
    <div class="row">
    <div class="col-12">
     <%
    Session session1 = FactoryProvider.getFactory().openSession();
    Query q = session1.createQuery("from NoteBook");
    
  List<NoteBook> list = q.list();
   for(NoteBook note : list){
	   %>
   
         <div class="card mt-3" >
  <!-- <div class="col-lg-4 col-md-6 col-sm-12 mb-4"> -->
  <img class="card-img-top m-3 mx-auto"  style="max-width:100px;" src="immg/notes.png" alt="note">
  <div class="card-body px-5">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
   <div class="container text-center mt-2">
    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
     <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-warning">Update</a>
   
   
   </div>
  </div>
</div>
</div>
<!-- </div> -->

<%    
   }
    session1.close();
    
    %>
    </div>
    
     </div>
   
</body>
</html>