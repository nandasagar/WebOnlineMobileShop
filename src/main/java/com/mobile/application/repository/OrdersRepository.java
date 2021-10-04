package com.mobile.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import com.mobile.application.model.Orders;


@EnableJpaRepositories

public interface OrdersRepository  extends JpaRepository<Orders, Integer>{

	List<Orders> findAllByEmail(String email);


	//List<Orders> findAllById(String email);


}
