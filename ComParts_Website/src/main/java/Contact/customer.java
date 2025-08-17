package Contact;

public class customer {


	private int id;
	private String name;
	private String email;
	private String password;
	private String username;
	

	public customer(int id, String name, String email, String password, String username) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.username = username;
	}


	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}


	public String getPassword() {
		return password;
	}


	public String getUsername() {
		return username;
	}

}
