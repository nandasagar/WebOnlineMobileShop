package com.mobile.application.service;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobile.application.repository.OrdersRepository;

@Service
@Transactional

public class OrdersService {
	@Autowired
	private OrdersRepository orderRepo;

	public OrdersService(OrdersRepository orderRepo) {
		
		this.orderRepo = orderRepo;
	} 

}
