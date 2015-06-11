package it.uniroma3.controller;

import it.uniroma3.model.*;

import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;


@ManagedBean()
@SessionScoped
public class CustomerController {

	private Long id;
	private String firstName;
	private String lastName;
	private String email;
	private Date dateOfBirth;
	private Date registrationDate;
	private Address address;
	private String password;
	private Customer customer;
	private String cstreet;
	private String cstate;
	private String czipcode;
	private String ccountry;
	private List<Customer> customers;
	private List<Order> orders;


	@EJB(beanName="cFacade")
	private CustomerFacade customerFacade;

	public String createCustomer() {
		this.address = new Address(cstreet, cstate, czipcode, ccountry);
		this.customer = customerFacade.createCustomer(firstName, lastName, email, dateOfBirth, address, password);
		if(this.customer != null) 
			return "customer"; 
		else 
			return "signinError";
	}

	public String loginCustomer(){
		Customer c = customerFacade.retrieveCustomer(email);
		if(c!=null){
			if(this.password.equals(c.getPassword())){
				this.customer=c;
				return "index";
			}
		}//in caso di errore da gestire meglio
		return "loginError";
	}
	
	public String listOrders() {
		this.orders = customerFacade.getAllOrders();
		return "orders"; 
	}
	
	public String logout(){
		FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
		return "index";
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

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public CustomerFacade getCustomerFacade() {
		return customerFacade;
	}

	public void setCustomerFacade(CustomerFacade customerFacade) {
		this.customerFacade = customerFacade;
	}

	public List<Customer> getCustomers() {
		return customers;
	}

	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCstreet() {
		return cstreet;
	}

	public void setCstreet(String cstreet) {
		this.cstreet = cstreet;
	}

	public String getCstate() {
		return cstate;
	}

	public void setCstate(String cstate) {
		this.cstate = cstate;
	}

	public String getCzipcode() {
		return czipcode;
	}

	public void setCzipcode(String czipcode) {
		this.czipcode = czipcode;
	}

	public String getCcountry() {
		return ccountry;
	}

	public void setCcountry(String ccountry) {
		this.ccountry = ccountry;
	}

}
