package com.nt.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.nt.Service.RegisterUserService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteController extends HttpServlet{
 @Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 int id=Integer.parseInt(req.getParameter("id"));
	 
	   RegisterUserService rus=new RegisterUserService();
boolean result=rus.deleteData(id);
	 if( result) {
			req.setAttribute("deleteMsg", "data deleted succsefully");
		}
		else {
			req.setAttribute("uDeleteMsg", "unable to delete data");

		}
RequestDispatcher rd=req.getRequestDispatcher("resultOfDelete.jsp");
rd.forward(req,resp);
}
}
