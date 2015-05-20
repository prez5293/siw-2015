package it.uniroma3.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Column;

	@Entity
	@NamedQuery(name = "findAllProducts", query = "SELECT p FROM Product p")
	public class Product {
        
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String name;
	
	@Column(nullable = false)
	private String code;

	@Column(length = 2000)
	private String description;
    
	@Column(nullable = false)
	private Float price;
	
	@Column(nullable = false)
	private Integer quantity;
	
	public Product() {
    }

	public Product(String name, String code, String description, Float price, Integer quantity) {
        this.name = name;
        this.code = code;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	public boolean equals(Object o) {
		Product that = (Product) o;
		return this.code.equals(that.getCode());
	}
	
	public int hashCode() {
		return this.code.hashCode();
	}

  	
}