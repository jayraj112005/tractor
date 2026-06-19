package com.nt.Controller;

import java.io.IOException;

import com.nt.Service.agricultureService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class TotalEarningsController extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String mail = null;
	Cookie ck[]=req.getCookies();
	
	if(ck!=null) {
		for (Cookie cookie : ck) {
			if(cookie.getName().equals("admin")) {
				mail=cookie.getValue();
			}
		}
	}else {
		throw new RuntimeException("cookie is not found pls check it");
	}
	agricultureService as=new agricultureService();
	int count=as.totalEarning(mail);
	req.setAttribute("earnings", count);
	RequestDispatcher rd=req.getRequestDispatcher("resultOfTotalEarnings.jsp");
	rd.forward(req,resp);
}
}
