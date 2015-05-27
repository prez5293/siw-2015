package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

import java.util.Date;
import java.util.List;

@Stateless(name="cFacade")
public class CustomerFacade {
	
    @PersistenceContext(unitName = "siw-2015")
    private EntityManager em;
    
	public Customer createCustomer(String firstName, String lastName, String email, Date dateOfBirth, Address address, String password) {
		Customer customer = new Customer(firstName, lastName, email, dateOfBirth, new Date(), address, password);
		em.persist(customer);
		return customer;
	}
	
	public List<Customer> getAllCustomer() {
        CriteriaQuery<Customer> cq = em.getCriteriaBuilder().createQuery(Customer.class);
        cq.select(cq.from(Customer.class));
        List<Customer> customers = em.createQuery(cq).getResultList();
		return customers;
	}

	
	public Product getProduct(Long id) {
	    Product product = em.find(Product.class, id);
		return product;
	}
	


	public void updateProduct(Product product) {
        em.merge(product);
	}
	
    private void deleteProduct(Product product) {
        em.remove(product);
    }

	public void deleteProduct(Long id) {
        Product product = em.find(Product.class, id);
        deleteProduct(product);
	}
}