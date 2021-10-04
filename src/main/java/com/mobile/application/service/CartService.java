package com.mobile.application.service;

import java.util.List;

import com.mobile.application.model.Cart;


public interface CartService {
	
	 
	 public List<Cart> getCart();
	 public Cart findById(int id);
	
	public List<Cart> getCartList();
	public void addToCart(Cart cart);
	public void removefromcart(int cartid);

}
