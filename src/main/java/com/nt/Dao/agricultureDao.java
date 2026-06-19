package com.nt.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.nt.Controller.DBConnection;
import com.nt.entity.Land;

public class agricultureDao  {
public boolean insertDailyWork(Land la) {
	try {
		Connection con=DBConnection.getConnection();
		if(con==null) {
			System.out.println("your database connection failed in inserDailyWork  method");
		}
		PreparedStatement ps=con.prepareStatement("insert into work values(?,?,?,?,?,?,?,?)");
		ps.setInt(1,la.getsrno());
		ps.setString(2, la.getDate());
		ps.setString(3, la.getLandHolder());
		ps.setString(4, la.getLandname());
		ps.setString(5, la.getWork());
		ps.setInt(6, la.getGuntha());
		ps.setInt(7,la.getBill());
		ps.setString(8, la.getGmail());
		
		int a=ps.executeUpdate();
		if(a!=0) {
			return true;
		}
	}catch (Exception e) {
		e.printStackTrace();
	}
	return false;
}

public int totalEarning(String mail) {
	    int count=0;
	try {
		Connection con=DBConnection.getConnection();
		if(con==null) {
			System.out.println("your database connection failed in inserDailyWork  method");
		}
		PreparedStatement ps=con.prepareStatement("select bill from work where gmail=?");
		ps.setString(1, mail);
		ResultSet rs=ps.executeQuery();
		 while(rs.next()) {
			count+=rs.getInt(1); 
		 }
		 }catch (Exception e) {
			e.printStackTrace();
		}
	return count;
}

public ResultSet totalEntries(String mail) {
	try {
		Connection con=DBConnection.getConnection();
		if(con==null) {
			System.out.println("your database connection failed in inserDailyWork  method");
		}
		PreparedStatement ps=con.prepareStatement("select srno, date, nameOfLandHolder, landName, work,gunthe, bill from work where gmail=?");
		ps.setString(1, mail);
		ResultSet rs=ps.executeQuery();
		return rs;
}catch (Exception e) {
	e.printStackTrace();
}
	return null;
}
}
