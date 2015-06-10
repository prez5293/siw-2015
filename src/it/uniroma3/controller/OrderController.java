package it.uniroma3.controller;

import java.util.Date;
import java.util.List;

import it.uniroma3.model.Customer;
import it.uniroma3.model.Order;
import it.uniroma3.model.OrderFacade;
import it.uniroma3.model.OrderLine;
import it.uniroma3.model.Product;
import it.uniroma3.model.ProductFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;



@ManagedBean()
@SessionScoped
public class OrderController {

	private Long id;
	private Date endTime;
	private Date confirmTime;
	private Integer quantity;
	private Customer customer;
	private Order order;
	private Product product;
	private OrderLine orderLine;
	private List<OrderLine> order_lines;
	
	@EJB(beanName="oFacade")
	private OrderFacade orderFacade;

	@EJB(beanName="pFacade")
	private ProductFacade productFacade;
	
	public String createOrder() {
		this.order = orderFacade.createOrder(new Date(System.currentTimeMillis()), customer);
		return "products";
	}
	
	public String addOrderLine(){
	    // = this.order.checkOrderLine(this.product);
/*		if(ordline!= null){
			ordline.setQuantity(ordline.getQuantity()+1);
			orderFacade.updateOrderLine(ordline);
		}else{*/
		
        this.orderLine = orderFacade.createOrderLine(this.product.getPrice(), this.quantity, this.order, this.product);
//        this.order.addOrderLine(ordline);
//        this.orderFacade.updateOrder(this.order);
//		}
		return "products";
	}
	
	public String closeOrder(){
		orderFacade.closeOrder(this.order,this.orderLine, new Date(System.currentTimeMillis()));
		FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
		return "index";
	}
	
	public String findOrder(Long id) {
		this.order = orderFacade.retrieveOrder(id);
		return "order";
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

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public OrderLine getOrderLine() {
		return orderLine;
	}

	public void setOrderLine(OrderLine orderLine) {
		this.orderLine = orderLine;
	}



}