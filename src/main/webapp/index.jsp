<%@page import="com.Db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

body{
overflow-x:hidden; 
}
.back-img {
	background:url("img/bgnote.jpg");
	width: 100%;
	height:100vh;
	background-repeat:no-repeat;
	background-size: cover;
}
.note{

}
</style>

<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>
	

	<div class="container-fluid back-img">
		<div class="text-center text-white  ">
			<h1><br><i class="fa fa-book" aria-hidden="true"></i>E-Notes Save Your Notes</h1>
			<a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Login</a>
			<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
		</div>
	</div>
	
	<%@include file="allcomponents/footer.jsp" %>
</body>
</html>