package it.uniroma3.model;

import javax.persistence.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Entity
@Table(name = "orders")
public class Order {


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Temporal(TemporalType.DATE)
	@Column(nullable = false)
	private Date creationTime;
	
	@Temporal(TemporalType.DATE)
	private Date endTime;
	
	@Temporal(TemporalType.DATE)
	private Date confirmTime;
    
	@ManyToOne(cascade = {CascadeType.ALL})
	private Customer customer;
	
	@OneToMany(mappedBy="order" ,cascade = {CascadeType.ALL}, fetch = FetchType.EAGER)
	private List<OrderLine> order_lines;
	
	public Order() { }

	public Order(Date creationTime,Date confirmTime, Customer customer) {
		this.creationTime = creationTime;
		this.confirmTime = confirmTime;
		this.customer = customer;
		this.order_lines = new ArrayList<OrderLine>();
	}
		
	public Date getCrationTime() {
		return creationTime;
	}

	public void setCrationTime(Date crationTime) {
		this.creationTime = crationTime;
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
	
	public void addOrderLine(OrderLine ol) {
		   this.order_lines.add(ol);
	
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

	public OrderLine checkOrderLine(Product product) {
		for(OrderLine ol : order_lines){
			if(ol.getProduct().getId().equals(product.getId())){
				return ol;
			}
		}
		return null;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}
}
