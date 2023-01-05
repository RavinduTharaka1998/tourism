package tourism;

public class Feedback {
	private int id;
	private String userName;
	private String name;
	private String email;
	private String country;
	private String comment;
	
	public Feedback(int id, String userName, String name, String email, String country, String comment) {
		this.id = id;
		this.userName = userName;
		this.name = name;
		this.email = email;
		this.country = country;
		this.comment = comment;
	} //Set values

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	

	
	
	
}
