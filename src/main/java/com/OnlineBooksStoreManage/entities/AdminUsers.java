package com.OnlineBooksStoreManage.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name ="AdminUsers",uniqueConstraints = @UniqueConstraint(columnNames = "email"))
public class AdminUsers {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String fullname;
	private String email;
	private String role;
	private String phoneno;
	private String address;
	private String password;

	@OneToOne(mappedBy ="user", cascade = CascadeType.ALL)
	private Cart cart;
	
	@OneToMany(mappedBy = "user",cascade = CascadeType.ALL)
	private List<Order> order=new ArrayList<Order>();
	
	public Cart getCart() {
		return cart;
	}


	public void setCart(Cart cart) {
		this.cart = cart;
	}




	public AdminUsers(int id, String fullname, String email, String role, String phoneno, String address,
			String password) {
//		super();
		this.id = id;
		this.fullname = fullname;
		this.email = email;
		this.role = role;
		this.phoneno = phoneno;
		this.address = address;
		this.password = password;
	}
	


	public List<Order> getOrder() {
		return order;
	}


	public void setOrder(List<Order> order) {
		this.order = order;
	}


	public AdminUsers() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	
	
	
	
}
