package com.nt.Service;

import java.sql.ResultSet;

import com.nt.Dao.RegisterUserDao;
import com.nt.entity.Register;

public class RegisterUserService {
	//only logical part write here dont 
	// if we have no anything logical part then the 
	//simply call the dao layer method
	RegisterUserDao registerUserDao=new RegisterUserDao();
    public boolean registeredData(Register rus) {
    	return registerUserDao.registeredData( rus);
    }
    
    public ResultSet updateData(int id) {
    return registerUserDao.updateData(id);
    }
    
    public boolean deleteData(int id) {
        return registerUserDao.deleteData( id);

    }
    public boolean updateExistingData(Register rg) {
    	
    	 return registerUserDao.updateExistingData(rg);
    }
    
    
    public ResultSet singleSelect(int id) {
   	 return registerUserDao.singleSelect(id);
    }
    
}
