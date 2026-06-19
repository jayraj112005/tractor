package com.nt.Controller;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
  private static Connection con=null;
	private DBConnection() {
	
	}
public static Connection getConnection() {
	try {
		if(con==null) {
		Class.forName("com.mysql.cj.jdbc.Driver");
		 con = DriverManager.getConnection(
			    "jdbc:mysql://localhost:3306/tractor?useSSL=false",
			    "root",
			    "jay112005"
			);
	}
		} catch (Exception e) {
		e.printStackTrace();
	}
	return con;
}
}
