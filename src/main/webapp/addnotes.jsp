<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	UserDetails user1=(UserDetails)session.getAttribute("userD");
    	if(user1==null)
    	{
    		response.sendRedirect("login.jsp");
    		session.setAttribute("login-error","please Login...");
    	}
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="allcomponents/allcss.jsp" %>
</head>
<body>
<div class="container-fluid">
<%@include file="allcomponents/navbar.jsp" %>

<h1 class="text-center mt-5">Add Your Notes</h1>
<div class="container">
<div class="row">
<div class="col-md-12">
<form action="AddNotesServlet" method="post">

  <div class="form-group">
  
  <%
  	UserDetails us=(UserDetails)session.getAttribute("userD");
  	if(us!=null)
  	{%>
  		<input type="hidden" value="<%=us.getId()%>" name="uid">
  	<%
  	
  	}
  
  %>
  
  
    <label for="exampleInputEmail1">Enter Title</label>
    <input type="text" name="title" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
   
  </div>
 	
	 <div class="form-group">
	  <label for="exampleInputEmail1">Enter Content</label>
	  <textarea rows="10" cols="" class="form-control" name="content" required="required"></textarea>
	 </div>
 
  
  	<div class="container text-center">
  		<button type="submit" class="btn btn-primary">Add Notes</button>		
  	</div>
  
  </form>

</div>

</div>

</div>
</div>
<%@include file="allcomponents/footer.jsp"%>
</body>
</html>