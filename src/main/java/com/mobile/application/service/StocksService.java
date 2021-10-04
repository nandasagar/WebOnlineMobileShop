package com.mobile.application.service;

import java.util.List;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobile.application.model.StocksEntity;
import com.mobile.application.repository.StocksRepository;

@Service
@Transactional
public class StocksService {
	
	@Autowired
	StocksRepository itemRepo;
	
	public List<StocksEntity> getAllItems() {
		return (List<StocksEntity>) itemRepo.findAll();
	}
	
	public StocksEntity getItemByModel(int model) {
		return itemRepo.findById(model).get();	
	}
	
	
	public void addProduct(int model, String itemname, String itemtype,
			int productid,int categoryid,int quantityavailable) {
		itemRepo.save(new StocksEntity(model,itemname,itemtype,productid,categoryid,quantityavailable));
    }
	

	public void saveItem(StocksEntity item) {
        itemRepo.save(item);
    }
	
	public void deleteItem(int model) {
			itemRepo.deleteById(model);
    }

}
