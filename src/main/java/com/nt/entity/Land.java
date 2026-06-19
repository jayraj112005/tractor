package com.nt.entity;


public class Land {
	private int srno;
	private String date;
	private String landHolder;
	private String landname;
	private String work;
	private int  guntha;
	private int bill;
	private String gmail;
public Land() {
		
	}
	public Land(int srno, String date, String landHolder, String landname, String work, int guntha, int bill,String gmail) {

		this.srno = srno;
		this.date = date;
		this.landHolder = landHolder;
		this.landname = landname;
		this.work = work;
		this.guntha = guntha;
		this.bill = bill;
		this.gmail = gmail;
	}
public Land(int srno, String date, String landHolder, String landname, String work, int guntha, int bill) {
		this.srno = srno;
		this.date = date;
		this.landHolder = landHolder;
		this.landname = landname;
		this.work = work;
		this.guntha = guntha;
		this.bill = bill;
	}
	
	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	
	public int getsrno() {
		return srno;
	}
	public String getDate() {
		return date;
	}
	public String getLandHolder() {
		return landHolder;
	}
	public String getLandname() {
		return landname;
	}
	public String getWork() {
		return work;
	}
	public int getGuntha() {
		return guntha;
	}
	public int getBill() {
		return bill;
	}
	public void setsrno(int srno) {
		this.srno = srno;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setLandHolder(String landHolder) {
		this.landHolder = landHolder;
	}
	public void setLandname(String landname) {
		this.landname = landname;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public void setGuntha(int guntha) {
		this.guntha = guntha;
	}
	public void setBill(int bill) {
		this.bill = bill;
	}
	
	
	

}
