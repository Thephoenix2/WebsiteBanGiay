package project.model;

public class Details {
	private String id;
	private String product_id;
	private String transaction_id;
	private int qty;
	private String price;
	private String discount;
	public Details() {
		super();
	}
	public Details(String id, String product_id, String transaction_id, int qty, String price, String discount) {
		super();
		this.id = id;
		this.product_id = product_id;
		this.transaction_id = transaction_id;
		this.qty = qty;
		this.price = price;
		this.discount = discount;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getTransaction_id() {
		return transaction_id;
	}
	public void setTransacsion_id(String transaction_id) {
		this.transaction_id = transaction_id;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	@Override
	public String toString() {
		return "Details [id=" + id + ", product_id=" + product_id + ", transaction_id=" + transaction_id + ", qty="
				+ qty + ", price=" + price + ", discount=" + discount + "]";
	}
	
}
