package Contact;

public class Inquiry {

	private int id;
	private String name;
	private String phone ;
	private String product;
	private String inquiry ;
	
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getProduct() {
		return product;
	}
	
	public String getInquiry() {
		return inquiry;
	}

	public Inquiry(int id, String name, String phone, String product, String inquiry) {
		
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.product = product;
		this.inquiry = inquiry;
	}

	public Inquiry() {
		super();

	}

	@Override
	public String toString() {
		return "Inquiry [id=" + id + ", name=" + name + ", phone=" + phone + ", product=" + product + ", inquiry="
				+ inquiry + "]";
	}
	
	
	
	
	
}
