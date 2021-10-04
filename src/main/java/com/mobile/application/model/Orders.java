package com.mobile.application.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orders")

public class Orders {

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "orderid", unique = true, nullable = false)
	private int orderid;
	
	
	@Column(name="email")
	private String email;
	

	
	@Column(name="model")
	private int model;
	
	@Column(name="quantity")
	private int quantity;
	
	@Column(name="total")
	private int total;

	@Column(name="itemname")
	private String itemname;

	 
	@Column(name="address")
	private String address;
	

	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public int getModel() {
		return model;
	}

	public void setModel(int model) {
		this.model = model;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}


	public Orders( String email, int model, String  itemname, int quantity, int total,String address) {
		super();
		
		this.email = email;
		this.model = model;
		this.quantity = quantity;
		this.total = total;
		this.itemname = itemname;
		this.address=address;
	}
	public Orders() {
		super();
	}
	@Override
	public String toString() {
		return "Orders [orderid=" + orderid + ", email=" + email + ", address=" + address + ", model=" + model
				+ ", quantity=" + quantity + ", total=" + total + ", itemname=" + itemname + "]";
	}

	
		
}
