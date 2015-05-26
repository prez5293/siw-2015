package it.uniroma3.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@MappedSuperclass
public abstract class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	Long id;

	@Column(nullable = false)
	private String firstName;

	@Column(nullable = false)
	private String lastName;
	
	@Column(nullable = false)
    private String password;

	private String email;

	@Column(nullable = false)
	@Temporal(TemporalType.DATE)
	private Date dateOfBirth;

	@OneToOne(cascade={CascadeType.ALL}, fetch = FetchType.EAGER)
	private Address address;
	
	public User(){
		
	}
	
	public User(String firstName, String lastName, String email,
			Date dateOfBirth,
			Address address, String password) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.dateOfBirth = dateOfBirth;
		this.address = address;
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
