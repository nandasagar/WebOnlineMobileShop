package com.mobile.application.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobile.application.model.Orders;
import com.mobile.application.repository.OrdersRepository;

@Service
@Transactional
public class OrderServicesAdmin {

	@Autowired
	OrdersRepository orderRepo;

	public OrderServicesAdmin(OrdersRepository orderRepository) {
		this.orderRepo = orderRepository;
	}

	public List<Orders> getAllOrders() {
		return (List<Orders>) orderRepo.findAll();
	}

}
