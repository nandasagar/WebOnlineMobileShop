package com.mobile.application.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User")
public class User
{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	@Column(name="id")
	private int id;
	
	@Column(name="email", nullable=false)
	private String email;
	
	@Column(name="userName", nullable=false)
	private String userName;
	
	@Column(name="phoneNumber", nullable=false)
	private Long phoneNumber;
	
	@Column(name="password", nullable=false)
	private String password;
	
	@Column(name="rolename", nullable=false)
	private String rolename;

	

	public User(String email, String userName, Long phoneNumber, String password, String rolename) {
		super();
		this.email = email;
		this.userName = userName;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.rolename = rolename;
	}

	public User() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(Long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRolename() {
		return rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", userName=" + userName + ", phoneNumber=" + phoneNumber
				+ ", password=" + password + ", rolename=" + rolename + "]";
	}

	
	
	
}
	