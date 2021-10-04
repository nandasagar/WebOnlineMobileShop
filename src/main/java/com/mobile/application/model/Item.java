package com.mobile.application.model;


import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="item")

public class Item {
	
	@Id
	
	
	private int model;
	
	private String itemname;
	
	private String color;
	
	private int price;
	
	private String features;
	
	private String image;

	
	private int productid;
	
	private int categoryid;
	
	private int quantity_available;
	
    private String itemtype;


	public int getModel() {
		return model;
	}

	public void setModel(int model) {
		this.model = model;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getFeatures() {
		return features;
	}

	public void setFeatures(String features) {
		this.features = features;
	}


	

	public String getImage() {
		return image;
	}

	public void setImage(String s) {
		this.image = s;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public int getQuantity_available() {
		return quantity_available;
	}

	public void setQuantity_available(int quantity_available) {
		this.quantity_available = quantity_available;
	}
	
	public String getItemtype() {
		return itemtype;
	}

	public void setItemtype(String itemtype) {
		this.itemtype = itemtype;
	}

	


	


	public Item(int model, String itemname, String color, int price, String features, String image, int productid,
			int categoryid, int quantity_available,String itemtype) {
		super();
		this.model = model;
		this.itemname = itemname;
		this.color = color;
		this.price = price;
		this.features = features;
		this.image = image;
		this.productid = productid;
		this.categoryid = categoryid;
		this.quantity_available = quantity_available;
		this.itemtype=itemtype;
	}

	public Item() {
	}

//	@Override
//	public String toString() {
//		return "Item [model=" + model + ", itemname=" + itemname + ", color=" + color + ", price=" + price
//				+ ", features=" + features + ", image=" + image + ", productid=" + productid + ", categoryid="
//				+ categoryid + ", quantity_available=" + quantity_available + "]";
//	}


	@Override
	public String toString() {
		return "Item [model=" + model + ", itemname=" + itemname + ", color=" + color + ", price=" + price
				+ ", features=" + features + ", image=" + image + ", productid=" + productid + ", categoryid="
				+ categoryid + ", quantity_available=" + quantity_available + ", itemtype=" + itemtype + "]";
	}

	
	
	
}
