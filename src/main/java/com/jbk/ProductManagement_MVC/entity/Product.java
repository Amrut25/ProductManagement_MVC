package com.jbk.ProductManagement_MVC.entity;


import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product {

	@Id
	private String productid;
	
	private String productname;
	private double productprice;
	private Date productexpiry;
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(String productid, String productname, double productprice, Date productexpiry) {
		super();
		this.productid = productid;
		this.productname = productname;
		this.productprice = productprice;
		this.productexpiry = productexpiry;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public double getProductprice() {
		return productprice;
	}

	public void setProductprice(double productprice) {
		this.productprice = productprice;
	}

	public Date getProductexpiry() {
		return productexpiry;
	}

	public void setProductexpiry(Date productexpiry) {
		this.productexpiry = productexpiry;
	}

	@Override
	public String toString() {
		return "Product [productid=" + productid + ", productname=" + productname + ", productprice=" + productprice
				+ ", productexpiry=" + productexpiry + "]";
	}
	
	
	
	
}
