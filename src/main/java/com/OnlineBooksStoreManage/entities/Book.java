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

@Entity
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long bookId;
	private String bookName;
	private String aurtherName;
	private String description;
	private String imgUrl;
	private String pdfUrl;
	private double price;
	
	@OneToMany(mappedBy = "book",cascade = CascadeType.ALL)
	private List<CartItem> cartitem = new ArrayList<>();
	
	public List<CartItem> getCartitem() {
		return cartitem;
	}


	public void setCartitem(List<CartItem> cartitem) {
		this.cartitem = cartitem;
	}

	@OneToMany(mappedBy = "book",cascade = CascadeType.ALL)
	private List<OrderItem> orderItem;
	
	public Book(long bookId, String bookName, String aurtherName, String description, String imgUrl, String pdfUrl,
			double price) {
		this.bookId = bookId;
		this.bookName = bookName;
		this.aurtherName = aurtherName;
		this.description = description;
		this.imgUrl = imgUrl;
		this.pdfUrl = pdfUrl;
		this.price = price;

	}


	public Book() {
//		super();
		
	}

	public long getBookId() {
		return bookId;
	}

	public void setBookId(long bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getAurtherName() {
		return aurtherName;
	}

	public void setAurtherName(String aurtherName) {
		this.aurtherName = aurtherName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getPdfUrl() {
		return pdfUrl;
	}

	public void setPdfUrl(String pdfUrl) {
		this.pdfUrl = pdfUrl;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

//	public AdminUsers getUser() {
//		return user;
//	}
//
//	public void setUser(AdminUsers user) {
//		this.user = user;
//	}
//	
}
