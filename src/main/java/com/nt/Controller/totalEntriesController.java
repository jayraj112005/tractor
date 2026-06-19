package com.nt.Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.nt.Service.agricultureService;
import com.nt.entity.Land;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class totalEntriesController extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
Cookie ck[]=req.getCookies();
	String mail=null;
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
	ResultSet rs=as.totalEntries(mail);
	ArrayList al=new ArrayList();
	
	Land l=new Land();
	try {
		while(rs.next()) {
			
		al.add(new Land(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getInt(7)));
		}
		req.setAttribute("totalEntries", al);
		RequestDispatcher rd=req.getRequestDispatcher("totalEntries.jsp");
		   rd.forward(req, resp);	
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
