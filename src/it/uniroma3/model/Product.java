package it.uniroma3.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQuery;
import javax.persistence.Column;

	@Entity
	public class Product {
        
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String name;

	private Float price;
	
	@Column(length = 2000)
	private String description;

	@Column(nullable = false)
	private String code;
	
	@ManyToMany(mappedBy = "products",cascade={CascadeType.ALL}, fetch = FetchType.EAGER)
	private List<Provider> providers;
	
	

	public Product(String name, Float price, String description, String code) {
        this.name = name;
        this.price = price;
        this.description = description;
        this.code = code;
        this.providers = new ArrayList<Provider>();
}

    //          Getters & Setters        
    
   public Long getId() {
        return id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return this.description;
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
    
    public void addProvider(Provider p) {
    	this.providers.add(p);
    }

	public void setId(Long id) {
		this.id = id;
	}

	public List<Provider> getProviders() {
		return providers;
	}

	public void setProviders(List<Provider> providers) {
		this.providers = providers;
	}


	
	
}