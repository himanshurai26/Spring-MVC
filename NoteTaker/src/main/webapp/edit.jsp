<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="org.hibernate.Session" %>
 <%@page import="com.hibernate.helper.FactoryProvider" %>
 <%@page import="com.hibernate.entities.NoteBook" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="common_css_js.jsp" %>
</head>
<body>
<div class="container-fluid m-0 p-0">
<%@include file="navbar.jsp" %>
<h1 class="text-center">Edit Your Note</h1>
</div>
<%
   int noteId = Integer.parseInt(request.getParameter("note_id").trim());
   
   Session session1 = FactoryProvider.getFactory().openSession();
  
   NoteBook note = (NoteBook)session1.get(NoteBook.class, noteId);
   %>
   <div class="container-fluid">
     
     
    <div class="col-md-12 ">
      <div class="col-md-5 offset-md-3">
   
   <form action="UpdateServlet" method="post">
   <input value="<%=note.getId() %>"  name="noteId" type="hidden"/>
   
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input type="text" class="form-control" id="title" name="title"
     required aria-describedby="emailHelp"
     value="<%=note.getTitle() %>"
     >

  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note  Content</label>
   <textarea id="content" name="content" required class="form-control custom-textarea" placeholder="Enter your content" >
   <%=note.getContent() %>
   </textarea>
  </div>
 <div class="container text-center">
  <button type="submit" class="btn btn-success">Update Notes</button>
</div>

</form>
</div>
</div>
</div>
   
</body>
</html>