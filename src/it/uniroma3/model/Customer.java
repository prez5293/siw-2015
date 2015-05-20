package it.uniroma3.model;

import javax.persistence.*;

import java.util.*;



@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	Long id;

	@Column(nullable = false)
	private String firstName;

	@Column(nullable = false)
	private String lastName;

	private String email;

	@Column(nullable = false)
	@Temporal(TemporalType.DATE)
	private Date dateOfBirth;

	@Column(nullable = false)
	@Temporal(TemporalType.DATE)
	private Date registrationDate;

	@OneToOne(cascade={CascadeType.ALL}, fetch = FetchType.EAGER)
	private Address address;

	@OneToMany(mappedBy = "customer",cascade={CascadeType.ALL}, fetch=FetchType.EAGER)
	private List<Order> orders;

	public Customer() { }


	public Customer(String firstName, String lastName, String email,
			Date dateOfBirth, Date registrationDate,
			Address address) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.dateOfBirth = dateOfBirth;
		this.registrationDate = registrationDate;
		this.address = address;
		this.orders = new ArrayList<Order>();
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

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public void addOrder(Order o) {
		this.orders.add(o);
	}


	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", email=" + email
				+ ", dateOfBirth="
				+ dateOfBirth + ", registrationDate=" + registrationDate + "]";
	}


}


