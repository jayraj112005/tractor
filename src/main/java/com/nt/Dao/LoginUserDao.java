package com.nt.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.nt.Controller.DBConnection;

public class LoginUserDao {

	public boolean checkLoginData(String mail, String password) {
	    try { 
	    	//System.out.println(password);

	    	Connection con =DBConnection.getConnection();
	    	String s = null;
	  PreparedStatement ps=con.prepareStatement("select password from register where userGmail=?");	  
	 ps.setString(1,mail);
	 ResultSet rs= ps.executeQuery();
	    while(rs.next()) {
	    	//System.out.println(rs.getString(1));
	    	s=rs.getString(1);
	    	
	    }
	    System.out.println(s);
	    if(s.equals(password)) {
	    	//System.out.println("hii");
    		return true;
	    	

    	}
	   
	    }
	    catch(Exception e){
	    	e.printStackTrace();
	    }
		//return false;
		return false;
		
	    }
	     
	}


