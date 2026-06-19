package com.nt.Controller;

import java.io.IOException;

import com.nt.Service.RegisterUserService;
import com.nt.entity.Register;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateDataUsingExistingValueController extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	Register rg=new Register();
	rg.setId(Integer.parseInt(req.getParameter("id")));
	rg.setUserName(req.getParameter("userName"));
	rg.setUserGmail(req.getParameter("userGamil"));
	rg.setContactNo(Long.parseLong(req.getParameter("contactNo")));
	rg.setPassword(req.getParameter("password"));
	rg.setTractorName(req.getParameter("tractorName"));
	
	 RegisterUserService rus=new RegisterUserService();
	 boolean b=rus.updateExistingData(rg);
	 if(b) {
		 req.setAttribute("updateSuccsesMsg", "data updated succsefully");
	 }
	 else {
		 req.setAttribute("updateErrorMsg", "unable to update data ");
	 }
	 RequestDispatcher rd=req.getRequestDispatcher("resultOfUpdatedData.jsp");
	 rd.forward(req,resp);
}
}
