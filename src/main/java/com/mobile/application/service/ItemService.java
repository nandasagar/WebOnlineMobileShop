package com.mobile.application.service;

import java.util.List;

import com.mobile.application.model.Item;

public interface ItemService {
	
	 
	 public List<Item> getItems();
	 public Item findById(int id);

	

}