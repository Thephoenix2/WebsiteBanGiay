package project.model;

public class Transactions {
	private int id;
	private int user_id;
	private String recipient;
	private String phone;
	private String address;
	private String amount;
	private String payment;	
	private String status;
	private String notes;
	private String created;
	private String admin_id;
	public Transactions() {}
	public Transactions(int id,int user_id,String recipient,String phone,String address,String amount,String payment,String status,String notes,String created,String admin_id) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.recipient = recipient;
		this.phone = phone;
		this.address = address;
		this.amount = amount;
		this.payment = payment;
		this.status = status;
		this.notes = notes;
		this.created = created;
		this.admin_id = admin_id;
	}
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public int getUser_id() {
		return user_id;
	}



	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}



	public String getRecipient() {
		return recipient;
	}



	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getAmount() {
		return amount;
	}



	public void setAmount(String amount) {
		this.amount = amount;
	}



	public String getPayment() {
		return payment;
	}



	public void setPayment(String payment) {
		this.payment = payment;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public String getNotes() {
		return notes;
	}



	public void setNotes(String notes) {
		this.notes = notes;
	}



	public String getCreated() {
		return created;
	}



	public void setCreated(String created) {
		this.created = created;
	}



	public String getAdmin_id() {
		return admin_id;
	}



	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}



	@Override
	public String toString() {
		return "Transactions [id=" + id + ", user_id=" + user_id + ", recipient=" + recipient + ", phone=" + phone
				+ ", address=" + address + ", amount=" + amount + ", payment=" + payment + ", status=" + status
				+ ", notes=" + notes + ", created=" + created + ", admin_id=" + admin_id + "]";
	}

	
	

}
