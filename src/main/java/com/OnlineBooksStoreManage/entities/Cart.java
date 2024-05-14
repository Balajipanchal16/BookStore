package com.OnlineBooksStoreManage.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Cart")
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long cartId;

	@OneToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "id")
	private AdminUsers user;

	@OneToMany(mappedBy = "cart", cascade = CascadeType.ALL)
	private List<CartItem> items=new ArrayList<>();

	public List<CartItem> getItems() {
		return items;
	}

	public void setItems(List<CartItem> items) {
		this.items = items;
	}

	public Cart(long cartId, List<Book> books, AdminUsers user) {
		this.cartId = cartId;
		this.user = user;
	}

	public Cart() {
	}

	public long getCartId() {
		return cartId;
	}

	public void setCartId(long cartId) {
		this.cartId = cartId;
	}


	public AdminUsers getUser() {
		return user;
	}

	public void setUser(AdminUsers user) {
		this.user = user;
	}
	
	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", user=" + user + ", items=" + items + "]";
	}
}
