package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;

import java.util.Date;
import java.util.List;

@Stateless(name="cFacade")
public class CustomerFacade {

	@PersistenceContext(unitName = "siw-2015")
	private EntityManager em;

	public Customer createCustomer(String firstName, String lastName, String email, Date dateOfBirth, Address address, String password) {
		Customer customer = new Customer(firstName, lastName, email, dateOfBirth, new Date(), address, password);
		if(this.retrieveCustomer(email) == null) {
			em.persist(customer);
			return customer;
		}
		return null;
	}

	public List<Customer> getAllCustomer() {
		CriteriaQuery<Customer> cq = em.getCriteriaBuilder().createQuery(Customer.class);
		cq.select(cq.from(Customer.class));
		List<Customer> customers = em.createQuery(cq).getResultList();
		return customers;
	}

	public Customer retrieveCustomer(String email){
		Customer c;
		Query q=em.createQuery("SELECT c FROM Customer c WHERE c.email=:email");
		q.setParameter("email", email);
		if(q.getResultList().isEmpty()) return null;
		else {
			c = (Customer)q.getSingleResult();
			return c;
		}
	}



	public Customer getCustomer(Long id) {
		Customer customer = em.find(Customer.class, id);
		return customer;
	}



	public void updateCustomer(Customer customer) {
		em.merge(customer);
	}

	private void deleteCustomer(Customer customer) {
		em.remove(customer);
	}

	public void deleteCustomer(Long id) {
		Customer customer = em.find(Customer.class, id);
		deleteCustomer(customer);
	}
}