package project.model;

import java.io.Serializable;

public class Item implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private Products product;
	private Transactions transactions;
	private int qty;
	private double price;
	public Item() {}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Products getProduct() {
		return product;
	}
	public void setProduct(Products product) {
		this.product = product;
	}
	
	public Transactions getTransactions() {
		return transactions;
	}

	public void setTransactions(Transactions transactions) {
		this.transactions = transactions;
	}

	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double string) {
		this.price = string;
	}
	@Override
	public String toString() {
		return "Item [id=" + id + ", product=" + product + ", transactions=" + transactions + ", qty=" + qty + ", price=" + price + "]";
	}
	
	
	
}
