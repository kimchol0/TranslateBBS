package com.entity;
import java.util.*;
public class Admin {
	private int Id=0;
	private String username="";
	private String pwd="";
	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id=Id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username=username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd=pwd;
	}
}
