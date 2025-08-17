package Contact;

public class Feedback {
	private int id;
	private String name;
	private String email;
	private String feedback;
	
	public Feedback(int id,String name, String email, String feedback) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.feedback = feedback;
	}

	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Feedback [id=" + id + ", name=" + name + ", email=" + email + ", feedback=" + feedback + "]";
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

	

	public String getFeedback() {
		return feedback;
	}

	

	


	
	
	
}
