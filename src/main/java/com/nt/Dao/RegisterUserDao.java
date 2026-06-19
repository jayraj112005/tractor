package com.nt.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.nt.Controller.DBConnection;
import com.nt.entity.Register;

import jakarta.servlet.RequestDispatcher;

public class RegisterUserDao {
	static 	PreparedStatement ps=null;
	
 public boolean registeredData(Register rus) {
	 try {
		   Connection con =DBConnection.getConnection();
			 ps=con.prepareStatement("insert into register values (?,?,?,?,?,?)");
			ps.setInt(1, rus.getId());
			ps.setString(2,rus.getUserName() );
			ps.setString(3,rus.getUserGmail() );
			ps.setLong(4,rus.getContactNo() );
			ps.setString(5,rus.getPassword() );
			ps.setString(6,rus.getTractorName() );
		  int a=ps.executeUpdate();
		  if( a==1) {
			  return true;
		  }
		} catch (Exception e) {
		e.printStackTrace();
		}
	 return false;
 }
 public ResultSet updateData(int id) {
	 try {
			Connection con=DBConnection.getConnection();
			 ps=con.prepareStatement("select * from register where id=?");

			ps.setInt(1,id);
			
			return ps.executeQuery();
			
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
   return null;
 }
 public boolean deleteData(int id) {
	 try {
			Connection con=DBConnection.getConnection();
		 ps=con.prepareStatement("delete from register where id=?");
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			if(i==1) {
				return true;
			}
}
	 catch (Exception e) {
e.printStackTrace();
}
	 return false; 
 }
 public ResultSet singleSelect(int id) {
	 try {
			Connection con=DBConnection.getConnection();
			 ps=con.prepareStatement("select id,userName,userGmail,contactNo,tractorName from register where id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			return rs;
}
	 catch (Exception e) {
e.printStackTrace();
}
	 return null;
 }
 public boolean updateExistingData(Register rg) {
	 try {
			Connection con=DBConnection.getConnection();
			 ps=con.prepareStatement("update register set userName=?, userGmail=?, contactNo=?, password=?, tractorName=?  where id=?");

			 ps.setInt(6, rg.getId());
				ps.setString(1,rg.getUserName() );
				ps.setString(2,rg.getUserGmail() );
				ps.setLong(3,rg.getContactNo() );
				ps.setString(4,rg.getPassword() );
				ps.setString(5,rg.getTractorName() );
				 int a=ps.executeUpdate();
			      if(a!=0) {
			    	  return true;
			      }
		}
		catch (Exception e) {
			e.printStackTrace();
		}
return false;
 }
}

