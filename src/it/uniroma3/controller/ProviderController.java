package it.uniroma3.controller;

import it.uniroma3.model.Address;
import it.uniroma3.model.Provider;
import it.uniroma3.model.ProviderFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean()
public class ProviderController {

	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String iva;
	private String phoneNumber;
	private String email;
	private String vatin;
	private Address address;
	private Provider provider;
	
	@EJB(beanName="pvFacade")
	private ProviderFacade providerFacade;
	
	public String createProvider() {
		this.provider = providerFacade.createProvider(iva, phoneNumber, email, vatin, address);
		return "provider"; 
	}


	public String findProvider() {
		this.provider = providerFacade.retrieveProvider(id);
		return "provider";
	}
	
	public String findProvider(Long id) {
		this.provider = providerFacade.retrieveProvider(id);
		return "provider";
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getIva() {
		return iva;
	}


	public void setIva(String iva) {
		this.iva = iva;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getVatin() {
		return vatin;
	}


	public void setVatin(String vatin) {
		this.vatin = vatin;
	}


	public Address getAddress() {
		return address;
	}


	public void setAddress(Address address) {
		this.address = address;
	}


	public Provider getProvider() {
		return provider;
	}


	public void setProvider(Provider provider) {
		this.provider = provider;
	}


	public ProviderFacade getProviderFacade() {
		return providerFacade;
	}


	public void setProviderFacade(ProviderFacade providerFacade) {
		this.providerFacade = providerFacade;
	}
	
}
