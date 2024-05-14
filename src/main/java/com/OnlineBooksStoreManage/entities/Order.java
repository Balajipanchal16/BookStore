package com.OnlineBooksStoreManage.entities;



import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "orders") 
public class Order {
		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private long orderId;
		
		

		@DateTimeFormat
		private Date orderedDate;
		
		@ManyToOne
		@JoinColumn(name="id")
		private AdminUsers user;

		@OneToMany(mappedBy = "order",cascade = CascadeType.ALL)
		private List<OrderItem> orderItems=new ArrayList<OrderItem>();

		public Order() {
			super();
		}

		public long getOrderId() {
			return orderId;
		}

		public AdminUsers getUser() {
			return user;
		}

		public void setUser(AdminUsers user) {
			this.user = user;
		}

		public List<OrderItem> getOrderItems() {
			return orderItems;
		}

		public void setOrderItems(List<OrderItem> orderItems) {
			this.orderItems = orderItems;
		}

		public void setOrderId(long orderId) {
			this.orderId = orderId;
		}
		public Date getOrderedDate() {
			return orderedDate;
		}

		public void setOrderedDate(Date orderedDate) {
			this.orderedDate = orderedDate;
		}

		
		
		
}
