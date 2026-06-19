package com.nt.Controller;

import java.io.IOException;

import com.nt.Service.agricultureService;
import com.nt.entity.Land;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DailyWorkController extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
int id=Integer.parseInt(req.getParameter("srno"));
String date=req.getParameter("date");
String landHolder=req.getParameter("holder");
String landname=req.getParameter("landname");
String work=req.getParameter("work");
int  guntha=Integer.parseInt(req.getParameter("guntha"));
int bill=Integer.parseInt(req.getParameter("bill"));
String gmail = null;
Cookie ck[]=req.getCookies();
if(ck!=null) {
	for (Cookie cookie : ck) {
		if(cookie.getName().equals("admin")) {
			gmail=cookie.getValue();
			}
		else {
			System.out.println("username doesnt match");
		}
	}
}
else {
	System.err.println("cooki is null");
}
Land la=new Land(id,date,landHolder,landname,work,guntha,bill,gmail);
agricultureService as= new agricultureService();
boolean a=as.insertDailyWork(la);

if(a) {
	req.setAttribute("succsesMsg","previous data inserteed Properly");
	RequestDispatcher rd=req.getRequestDispatcher("todayWork.jsp");
	   rd.forward(req, resp);	
}
else {
	req.setAttribute("erorrMsg","previous data not inserteed Properly");
	RequestDispatcher rd=req.getRequestDispatcher("todayWork.jsp");
	   rd.forward(req, resp);	
}

}
}
