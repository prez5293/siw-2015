package it.uniroma3.controller;

import java.util.Date;
import java.util.List;

import it.uniroma3.model.Customer;
import it.uniroma3.model.Order;
import it.uniroma3.model.OrderFacade;
import it.uniroma3.model.OrderLine;
import it.uniroma3.model.ProductFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;



@ManagedBean()
public class OrderController {

	private Long id;
	private Date endTime;
	private Date confirmTime;
	private Float unitPrice;
	private Integer quantity;
	private Customer customer;
	private String pCode;
	private List<Order> orders;
	private List<OrderLine> order_lines;

	@EJB(beanName="oFacade")
	private OrderFacade orderFacade;

	@EJB(beanName="pFacade")
	private ProductFacade productFacade;

	public String createOrder() {
		List<Order> cOrders = customer.getOrders();
		Order openOrder = null;

		if(!cOrders.isEmpty())
			for(Order o : cOrders) {
				if(o.getEndTime() == null)
					openOrder = o;
			}

		if(openOrder == null) {
			Order order = orderFacade.createOrder(new Date(System.currentTimeMillis()), customer);
			orderFacade.createOrderLine(unitPrice, quantity, order, productFacade.retrieveProduct("cc"));
			return "order";
		}

		else {
            orderFacade.createOrderLine(unitPrice, quantity, openOrder, productFacade.retrieveProduct(pCode));
            return "order";
		}
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}



	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Date getConfirmTime() {
		return confirmTime;
	}

	public void setConfirmTime(Date confirmTime) {
		this.confirmTime = confirmTime;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<OrderLine> getOrder_lines() {
		return order_lines;
	}

	public void setOrder_lines(List<OrderLine> order_lines) {
		this.order_lines = order_lines;
	}

}