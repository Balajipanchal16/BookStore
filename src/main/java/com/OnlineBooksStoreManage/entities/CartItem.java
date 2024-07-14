package com.OnlineBooksStoreManage.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CartItem {
		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private long cartItemId;
		
		@ManyToOne(cascade = CascadeType.PERSIST)
		@JoinColumn(name="cart_id")
		private Cart cart;
		
		@ManyToOne(cascade = CascadeType.PERSIST)
		@JoinColumn(name="book_id")
		private Book book;

		public long getCartItemId() {
			return cartItemId;
		}

		public void setCartItemId(long cartItemId) {
			this.cartItemId = cartItemId;
		}

		public Cart getCart() {
			return cart;
		}

		public void setCart(Cart cart) {
			this.cart = cart;
		}

		public Book getBook() {
			return book;
		}

		public void setBook(Book book) {
			this.book = book;
		}

		public CartItem() {
			super();
			// TODO Auto-generated constructor stub
		}

		public CartItem(long cartItemId, Cart cart, Book book) {
			super();
			this.cartItemId = cartItemId;
			this.cart = cart;
			this.book = book;
		}

		@Override
		public String toString() {
			return "CartItem [cartItemId=" + cartItemId + ", cart=" + cart + ", book=" + book + "]";
		}
		
		
		
		
		
}
