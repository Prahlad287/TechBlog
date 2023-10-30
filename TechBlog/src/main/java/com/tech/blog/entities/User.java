package com.tech.blog.entities;

public class User {
	private int id;
	private String Name;
	private String Email;
	private String Password;

	private String Gender;
	private String About;
	private String DateTime;
	public User(int id, String name, String email, String password, String gender, String about, String dateTime) {
		super();
		this.id = id;
		Name = name;
		Email = email;
		Password = password;
		Gender = gender;
		About = about;
		DateTime = dateTime;
	}
	public User( String name, String email, String password, String gender, String about) {
		super();
		
		Name = name;
		Email = email;
		Password = password;
		Gender = gender;
		About = about;
		
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getAbout() {
		return About;
	}
	public void setAbout(String about) {
		About = about;
	}
	public String getDateTime() {
		return DateTime;
	}
	public void setDateTime(String dateTime) {
		DateTime = dateTime;
	}
	
	

}
