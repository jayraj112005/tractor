package com.nt.entity;

import com.nt.Dao.LoginUserDao;

public class LoginUserService {

	public boolean checkLoginData(String mail, String password) {
		LoginUserDao  lud=new LoginUserDao();
	  boolean m=lud.checkLoginData(mail,password);
		//System.out.println( m);
		return m;
	}

}
