package it.uniroma3.model;

import java.util.Date;

public class Administrator extends User {

	public Administrator(String firstName, String lastName, String email,
			Date dateOfBirth, Address address, String password) {
		super(firstName, lastName, email, dateOfBirth, address, password);
	}
	
}
