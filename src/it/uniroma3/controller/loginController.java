package it.uniroma3.controller;

import it.uniroma3.model.*;

import java.util.Date;

import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

@ManagedBean()
@SessionScoped
public class loginController {
	
	private Long id;
	private String firstName;
	private String lastName;
	private String email;
	private Date dateOfBirth;
	private Address address;
	private String password;
	private Administrator administrator;
	
	@EJB(beanName="adFacade")
	private AdministratorFacade adFacade;
	
	public String loginAdmin(){
		Administrator admin = adFacade.retrieveAdmin(email);
		if(admin != null){
			if(this.password.equals(admin.getPassword())){
				this.administrator=admin;
				return "indexadmin";
			}
		}
		FacesContext.getCurrentInstance().addMessage("loginController:login", new FacesMessage("email o password errata/e"));
		return "signin";
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
	
	public Administrator getAdministrator() {
		return administrator;
	}
	
	public void setAdministrator(Administrator administrator) {
		this.administrator = administrator;
	}

}
