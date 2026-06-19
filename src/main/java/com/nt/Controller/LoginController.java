package com.nt.Controller;

import java.io.IOException;

import com.nt.entity.LoginUserService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginController extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	 RequestDispatcher rd=null;
	String mail=req.getParameter("mail");
	String password=req.getParameter("password");
	       LoginUserService lus=new LoginUserService();
	      boolean result= lus.checkLoginData(mail,password);
	     // System.out.println(result);
	     
	      if(result) {
	    	  Cookie ck=new Cookie("admin",mail);
	    	  resp.addCookie(ck);
	    	  req.setAttribute("SuccsesMsg", "Login succsefully ");
	    	   rd=req.getRequestDispatcher("Dashboard.jsp");     
	}
	      
	      else {
	    	  req.setAttribute("errorMsg", "invalid login details ");
	    	  rd=req.getRequestDispatcher("login.jsp");
	      }
	      rd.forward(req, resp);
	      
}
}
