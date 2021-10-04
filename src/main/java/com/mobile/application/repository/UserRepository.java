package com.mobile.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;


import com.mobile.application.model.User;

@EnableJpaRepositories
public interface UserRepository  extends JpaRepository<User, String> {

	List<User> findByEmail(String email);
}