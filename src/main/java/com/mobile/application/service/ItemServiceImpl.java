package com.mobile.application.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mobile.application.model.Item;
import com.mobile.application.repository.ItemRepository;





@Service
@Transactional
public class ItemServiceImpl implements ItemService{
	
	 @Autowired
	   private  ItemRepository itemRepository;


	    public List<Item> getItems() {
	        return (List<Item>) itemRepository.findAll();
	    }


		@Override
		public Item findById(int id) {
			Item item =itemRepository.getOne(id);
			return item;
		}

}
