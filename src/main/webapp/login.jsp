<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="allcomponents/allcss.jsp" %>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Login Page</h4>
					</div>
					<%
					String invalidMsg = (String) session.getAttribute("login-failed");

					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%= invalidMsg %></div>
					<%
						session.removeAttribute("login-failed");
						}
					%>
					
					<%
						String withoutLogin=(String)session.getAttribute("login-error");
						if(withoutLogin!=null)
						{%>
							<div class="alert alert-danger" role="alert"><%= withoutLogin %></div>
							
						<%
							session.removeAttribute("login-error");
						 }
					    %>
					    
					    <%
					    	String lgMsg=(String)session.getAttribute("logoutMsg");
					    	if(lgMsg!=null)
					    	{%>
					    		<div class="alert alert-danger" role="alert"><%= lgMsg %></div>
					    	<%
					    	session.removeAttribute("logoutMsg");
					    	}
					    %>
					<div class="card-body">

						<form action="LoginServlet" method="post">

							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" name="uemail" id="exampleInputEmail1"
									aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label>Enter Password</label> <input type="password"
									class="form-control" name="upassword" id="exampleInputPassword1">
							</div>


							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-dark mt-1">
	<p class="text-center text-white">Designed and developed By Payal Yadav</p>
	<p class="text-center text-white">All Rights Reserved @payalyadav</p>

</div>



</body>
</html>