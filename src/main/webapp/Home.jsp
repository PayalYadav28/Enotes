<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%
    	UserDetails user2=(UserDetails)session.getAttribute("userD");
    	if(user2==null)
    	{
    		response.sendRedirect("login.jsp");
    		session.setAttribute("login-error","please Login...");
    	}
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcomponents/allcss.jsp" %>
</head>
<body>

<div class="container-fluid">
<%@include file="allcomponents/navbar.jsp" %>
	<div class="card mt-5 mb-5">
		<div class="card-body text-center mb-4">
		<img alt="" src="img/book2.png" class="img-fluid mx-auto" style="width:350px;height: 350px;">
		<h1>START TAKING YOUR NOTES</h1>
		<a href="addnotes.jsp" class="btn btn-outline-primary">Start Here</a>		
		</div>
	</div>

</div>
<%@include file="allcomponents/footer.jsp" %>
</body>
</html>