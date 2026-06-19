package com.nt.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.nt.entity.Register;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SelectAllController extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		Connection con=DBConnection.getConnection();
		PreparedStatement ps=con.prepareStatement("select id,userName,userGmail,contactNo,tractorName from register");
		 ResultSet rs=ps.executeQuery();
		 ArrayList<Register> al=new ArrayList();
		 while (rs.next()) {
		al.add(new Register(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getLong(4),rs.getString(5)));	
		}
		 req.setAttribute("register",al);
		 RequestDispatcher rd=req.getRequestDispatcher("resultOfSelectAll.jsp");
		 rd.forward(req, resp);
		
	} catch (Exception e) {
		e.printStackTrace();
	}
}
}
