package it.uniroma3.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
public class Provider {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String iva;

	private String phoneNumber;

	private String email;

	@Column(nullable = false)
	private String vatin;

	@ManyToMany(mappedBy = "provider",cascade={CascadeType.ALL}, fetch = FetchType.EAGER)
	private List<Product> products;

	@OneToOne(cascade={CascadeType.ALL}, fetch = FetchType.EAGER)
	private Address address;

	public Provider() { }

	public Provider(String iva, String phoneNumber, String email,
			String vatin, Address address) {
		this.iva = iva;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.vatin = vatin;
		this.address = address;
		this.products = new ArrayList<Product>();
	}

	public Long getId() {
		return id;
	}

	public String getName() {
		return iva;
	}

	public void setName(String iva) {
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

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	
	public void addProduct(Product p) {
		this.products.add(p);
	}

}
