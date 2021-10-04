package com.mobile.application.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobile.application.model.User;
import com.mobile.application.repository.UserRepository;

@Service
@Transactional
public class UserServicesAdmin {
	@Autowired
	UserRepository userRepo;

	public List<User> getAllUsers() {
		return (List<User>) userRepo.findAll();
	}

}
