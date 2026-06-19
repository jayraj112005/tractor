package com.nt.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class loginUserDataInCorner extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String username;
   RequestDispatcher rd=null;
Cookie ck[]=req.getCookies();
if(ck==null) {
	req.setAttribute("errorMsg", "ck is bkank");
   rd=req.getRequestDispatcher("loginUserDataInCorner.jsp");
   rd.forward(req, resp);  	
}else {

for (Cookie cookie : ck) {
	if(cookie.getName().equals("admin")) {
		username=cookie.getValue();
		req.setAttribute("succsesMsg", username);
		   rd=req.getRequestDispatcher("loginUserDataInCorner.jsp");
		   rd.forward(req, resp);	
	}
	else {
		req.setAttribute("errorMsg", "ck is bkank");
	   rd=req.getRequestDispatcher("loginUserDataInCorner.jsp");
	   rd.forward(req, resp); 
	}
}
}

}
}
