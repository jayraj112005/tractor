package com.nt.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.nt.Service.RegisterUserService;
import com.nt.entity.Register;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateController extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
int id=Integer.parseInt(req.getParameter("id"));

RegisterUserService rus=new RegisterUserService();
ResultSet rs=rus.updateData(id);
Register rg=new Register();
try {
	while(rs.next()) {
	rg.setId(rs.getInt(1));
	rg.setUserName(rs.getString(2));
	rg.setUserGmail(rs.getString(3));
	rg.setContactNo(rs.getLong(4));
	rg.setPassword(rs.getString(5));
	rg.setTractorName(rs.getString(6));
	}
	req.setAttribute("register", rg);
} catch (Exception e) {
	
}

RequestDispatcher rd=req.getRequestDispatcher("resultOfUpdate.jsp");
rd.forward(req,resp);
}
}
