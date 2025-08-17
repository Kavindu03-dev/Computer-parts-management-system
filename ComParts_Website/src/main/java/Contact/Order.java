package Contact;

public class Order {

	private int order_id;
	private String name;
	private String product;
	private String product_id;
	private String price;
	private String address;
	private String quantity;
	
	

	public Order(int order_id, String name,String product, String product_id, String price, String address,
			String quantity) {
		super();
		this.order_id = order_id;
		this.name = name;
		this.product=product;
		this.product_id = product_id;
		this.price = price;
		this.address = address;
		this.quantity = quantity;
	}

	public int getOrder_id() {
		return order_id;
	}



	public String getName() {
		return name;
	}



	public String getProduct_id() {
		return product_id;
	}



	public String getPrice() {
		return price;
	}

	
	public String getAddress() {
		return address;
	}

	  public String getProduct() {
	        return product;
	    }

	public String getQuantity() {
		return quantity;
	}



}
