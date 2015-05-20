package it.uniroma3.model;

import javax.persistence.*;


@Entity
public class Address {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String street;

	@Column(nullable = false)
	private String state;

	@Column(nullable = false)
	private String zipcode;

	@Column(nullable = false)
	private String country;
	
	public Address() { }

	

	public Address(String street, String state, String zipcode, String country) {
		this.street = street;
		this.state = state;
		this.zipcode = zipcode;
		this.country = country;
	
	}



	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	
}
