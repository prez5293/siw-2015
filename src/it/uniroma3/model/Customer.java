package it.uniroma3.model;

import javax.persistence.*;

import java.util.*;



@Entity
public class Customer extends User {

	@Column(nullable = false)
	@Temporal(TemporalType.DATE)
	private Date registrationDate;

	@OneToMany(mappedBy = "customer",cascade={CascadeType.ALL}, fetch=FetchType.EAGER)
	private List<Order> orders;
	
	public Customer(){
		
	}

	public Customer(String firstName, String lastName, String email,
			Date dateOfBirth, Date registrationDate,
			Address address, String password) {
		super(firstName,lastName,email,dateOfBirth,address,password);
		this.registrationDate = registrationDate;
		this.orders = new ArrayList<Order>();
	}
	
	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
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




}


