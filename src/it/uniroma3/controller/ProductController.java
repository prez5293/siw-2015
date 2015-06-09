package it.uniroma3.controller;

import java.util.List;

import it.uniroma3.model.Product;
import it.uniroma3.model.ProductFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;



@ManagedBean()
@SessionScoped
public class ProductController {
	
	private Long id;
	private String name;
	private Float price;
	private String description;
	private String code;
	private String pemail;
	private Product product;
	private List<Product> products;
	
	@EJB(beanName="pFacade")
	private ProductFacade productFacade;
	
	public String createProduct() {
		this.product = productFacade.createProduct(name, code, price, description, pemail);
		if(this.product!=null)
			return "product"; 
		else
			return "loginError";
	}
	
	public String listProducts() {
		this.products = productFacade.getAllProducts();
		return "products"; 
	}
	
	public String listProducts1() {
		this.products = productFacade.getAllProducts();
		return "index"; 
	}

	public String findProduct() {
		this.product = productFacade.retrieveProduct(id);
		return "product";
	}
	
//	public String findProduct(Long id) {
//		this.product = productFacade.retrieveProduct(id);
//		return "product";
//	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public String getPemail() {
		return pemail;
	}

	public void setPemail(String pemail) {
		this.pemail = pemail;
	}
}


