package com.nt.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nt.Service.RegisterUserService;
import com.nt.entity.Register;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SelectController extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 int id=Integer.parseInt(req.getParameter("id"));
	 
	 
	   RegisterUserService rus=new RegisterUserService();
          ResultSet rs=rus.singleSelect(id);
			
			Register register=new Register();
			
				try {
					while(rs.next()) {
					register.setId(rs.getInt(1));
					register.setUserName(rs.getString(2));
					register.setUserName(rs.getString(2));
					register.setUserGmail(rs.getString(3));
					register.setContactNo(rs.getLong(4));
					register.setTractorName(rs.getString(5));
				}
					req.setAttribute("register", register);
					RequestDispatcher rd=req.getRequestDispatcher("ResultOfSelect.jsp");
					rd.forward(req,resp);
				}catch (SQLException e) {
					
					e.printStackTrace();
				}
				
			}
			
			

}




