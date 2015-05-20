package it.uniroma3.controller;

import it.uniroma3.model.*;

import javax.annotation.ManagedBean;
import javax.ejb.EJB;

@ManagedBean
public class ProductController {
     
	@EJB(beanName = "pfacade")
	private ProductFacade pf;
	private String name;
	private String code;
	private String description;
	private Float price;
	private Integer quantity;
	private Product product;
	
	public String createProduct() {
		this.product = pf.createProduct(name, code, description, price, quantity);
		return "product";
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

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
}
