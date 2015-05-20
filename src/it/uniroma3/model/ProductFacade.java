package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless(name = "pFacade")
public class ProductFacade {
	
	@PersistenceContext(unitName = "unit-product")
	private EntityManager em;	
	
	public Product createProduct(String name, String code, String description, Float price, Integer quantity) {
		Product p = new Product(name, code, description, price, quantity);
		em.persist(p);
		return p;
	}
 

}