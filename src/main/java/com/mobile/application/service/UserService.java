package com.mobile.application.service;

import com.mobile.application.model.User;

public interface UserService {
	
	public User findUserByEmail(String email);
	
	public User saveUser(User user);

}
