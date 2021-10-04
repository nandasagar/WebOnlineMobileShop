package com.mobile.application.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "items")
public class StocksEntity {

	@Id
	@Column(name = "model")
	private int model;

	@Column(name = "itemname")
	private String itemname;

	@Column(name = "itemtype")
	private String itemtype;


	@Column(name = "productid")
	private int productid;

	@Column(name = "categoryid")
	private int categoryid;

	@Column(name = "quantityavailable")
	private int quantityavailable;

	public StocksEntity() {
		super();
	}

	public StocksEntity(int model, String itemname, String itemtype, int productid,
			int categoryid, int quantityavailable) {
		super();
		this.model = model;
		this.itemname = itemname;
		this.itemtype = itemtype;
	
		this.productid = productid;
		this.categoryid = categoryid;
		this.quantityavailable = quantityavailable;

	}
	
	public StocksEntity(int model) {
		super();
		this.model = model;
	}
	
	public StocksEntity(int model,  int quantityavailable) {
		super();
		this.model=model;
		this.quantityavailable = quantityavailable;

	}
	
	
	

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

	public String getItemtype() {
		return itemtype;
	}

	public void setItemtype(String itemtype) {
		this.itemtype = itemtype;
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

	public int getQuantityavailable() {
		return quantityavailable;
	}

	public void setQuantityavailable(int quantityavailable) {
		this.quantityavailable = quantityavailable;
	}

}