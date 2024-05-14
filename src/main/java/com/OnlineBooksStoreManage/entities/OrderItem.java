package com.OnlineBooksStoreManage.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class OrderItem {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long orderItemId;
		
	@ManyToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name="book_id")
	private Book book;
	
	@ManyToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name="order_id")
	private Order order;
	
	@Column(name="approved")
	private boolean approved=false;

	public boolean isApproved() {
		return approved;
	}

	public void setApproved(boolean approved) {
		this.approved = approved;
	}

	public OrderItem(long orderItemId, Book book, Order order) {
		super();
		this.orderItemId = orderItemId;
		this.book = book;
		this.order = order;
	}

	public long getOrderItemId() {
		return orderItemId;
	}

	public void setOrderItemId(long orderItemId) {
		this.orderItemId = orderItemId;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public OrderItem() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
}
