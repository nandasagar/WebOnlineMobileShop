package com.mobile.application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mobile.application.model.Cart;
import com.mobile.application.repository.CartRepository;




@Service
@Transactional
public class CartServiceImpl implements CartService{
	 @Autowired
	    CartRepository cartRepository;
	
	@Override
	public void addToCart(Cart cart) {
		// TODO Auto-generated method stub
		cartRepository.save(cart);
		
	}

	@Override
	public List<Cart> getCartList() {
		// TODO Auto-generated method stub
		 return (List<Cart>) cartRepository.findAll();
	}
	
	@Override
	public void removefromcart(int cartid) {
	// TODO Auto-generated method stub
	cartRepository.deleteById(cartid);
}

	@Override
	public List<Cart> getCart() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cart findById(int id) {
		Cart cart =cartRepository.getOne(id);
		return cart;
	}

	


}
