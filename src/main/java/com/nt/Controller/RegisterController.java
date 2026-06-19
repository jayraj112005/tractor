package com.nt.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.nt.Service.RegisterUserService;
import com.nt.entity.Register;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	int id=Integer.parseInt(req.getParameter("id"));
	String uname=req.getParameter("userName");
	String ugmail=req.getParameter("userGamil");
	Long contactnumber=Long.parseLong(req.getParameter("contactNo"));
	String password=req.getParameter("password");
	String tractorname=req.getParameter("tractorName");
   
   RegisterUserService rus=new RegisterUserService();
    boolean result=rus.registeredData(new Register(id,uname,ugmail,contactnumber,password,tractorname));
   
   
   if(result) {
		  req.setAttribute("successMsg"," succsessfully register");
	   }
	   else {
			  req.setAttribute("errorMsg"," unable to register"); 
	   }
		RequestDispatcher rd=req.getRequestDispatcher("resultOfRegister.jsp");
		rd.forward(req,resp);
	}
}
