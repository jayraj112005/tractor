package com.nt.Service;

import java.sql.ResultSet;

import com.nt.Dao.agricultureDao;
import com.nt.entity.Land;

public class agricultureService {

	public boolean insertDailyWork(Land la) {
		agricultureDao ad=new agricultureDao();
				return ad.insertDailyWork(la);
	}

	public int totalEarning(String mail) {
		agricultureDao ad=new agricultureDao();
		return ad.totalEarning(mail);
		
	}

	public ResultSet totalEntries(String mail) {
		agricultureDao ad=new agricultureDao();
		return ad.totalEntries(mail);
	}

}
