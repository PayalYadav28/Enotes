package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.Db.DBConnect;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	Integer notid=Integer.parseInt(request.getParameter("note_id"));
	
	PostDAO dao=new PostDAO(DBConnect.getConn());
	
	boolean f=dao.deleteNotes(notid);
	
	
	HttpSession session=null;
	
	
	if(f) {
		session=request.getSession();
		session.setAttribute("updateMsg","Notes Delete Successfully!!...");
		response.sendRedirect("shownotes.jsp");
		
	}else {
		session=request.getSession();
		session.setAttribute("wrongMsg","Something went wrong on server!");
		response.sendRedirect("shownotes.jsp");
	}
	
	
	}

	
	
}
