<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file = "common_css_js.jsp" %>
</head>
<body>
<div class="container-fluid p-0 m-0">
    <%@include file = "navbar.jsp" %>
    
    </div>
    
    <div class="container-fluid">
      <!-- This is Add form.. -->
      <div class="col-md-12 ">
      <div class="col-md-5 offset-md-3">
    <h1 class="text-center">Please fill your note details</h1>
    <form action="saveNoteServlet" method="post">
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input type="text" class="form-control" id="title" name="title" required aria-describedby="emailHelp">

  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note  Content</label>
   <textarea id="content" name="content" required rows="10" class="form-control custom-textarea" placeholder="Enter your content"></textarea>
  </div>
 <div class="container text-center">
  <button type="submit" class="btn btn-warning">Submit</button>
</div>

</form>
</div>
</div>
    </div>
</body>
</html>