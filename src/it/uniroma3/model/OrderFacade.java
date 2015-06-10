package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import java.util.Date;

@Stateless(name="oFacade")
public class OrderFacade {

	@PersistenceContext(unitName = "siw-2015")
	private EntityManager em;



	public Order createOrder(Date date, Customer customer) {
		Order order = new Order(date, customer);
		order.setCustomer(customer);
		customer.addOrder(order);
		em.persist(order);
		return order;
	}
	
	public OrderLine createOrderLine(Float unitPrice, Integer quantity, Order order, Product product) {
		OrderLine orderLine = new OrderLine(unitPrice, quantity, order, product);
		order.addOrderLine(orderLine);
		orderLine.setOrder(order);
		em.persist(orderLine);
		return orderLine;
	}
	
//	public void closeOrder(Order order, Date date) {
//		order.setConfirmTime(date);
//		em.persist(order);
//	}
	
	public Order retrieveOrder(Long id) {
		Order order;
		Query q = em.createQuery("SELECT o FROM Order o WHERE o.id=:id");
		q.setParameter("id", id);
		if(q.getResultList().isEmpty())
			return null;
		else {
			order = (Order) q.getSingleResult();
			return order;
		}
		
		
	}
	
	
    public void updateOrder(Order order) {
        em.merge(order);
    }
    
    public void updateOrderLine(OrderLine orderLine) {
        em.merge(orderLine);
    }
    
    


	
	
	
}





