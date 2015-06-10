package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import java.util.Date;

@Stateless(name="oFacade")
public class OrderFacade {

	@PersistenceContext(unitName = "siw-2015")
	private EntityManager em;



	public Order createOrder(Date date, Customer customer) {
		Order order = new Order(date, customer);
		order.setCustomer(customer);
		em.persist(order);
		return order;
	}
	
	public OrderLine createOrderLine(Float unitPrice, Integer quantity, Order order, Product product) {
		OrderLine orderLine = new OrderLine(unitPrice, quantity,order, product);
		order.addOrderLine(orderLine);
		em.persist(orderLine);
		return orderLine;
	}
	
    public void updateOrder(Order order) {
        em.merge(order);
    }
    
    public void updateOrderLine(OrderLine orderLine) {
        em.merge(orderLine);
    }
	
	
	
}





