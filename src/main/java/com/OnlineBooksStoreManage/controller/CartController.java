package com.OnlineBooksStoreManage.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.OnlineBooksStoreManage.entities.AdminUsers;
import com.OnlineBooksStoreManage.entities.Book;
import com.OnlineBooksStoreManage.entities.Cart;
import com.OnlineBooksStoreManage.entities.CartItem;
import com.OnlineBooksStoreManage.repositry.Addbooksrepo;
import com.OnlineBooksStoreManage.repositry.CartItemRepo;
import com.OnlineBooksStoreManage.repositry.CartRepo;
import com.OnlineBooksStoreManage.repositry.UserAdminrepo;

@Controller
public class CartController {
	@Autowired
	private CartRepo cartRepo;
	
	@Autowired
	private CartItemRepo cartItemRepo;
	
	@Autowired
	private UserAdminrepo userRepo;
	
	@Autowired
	private Addbooksrepo bookRepo;

	@RequestMapping("addToCart/{bookId}/{id}")
	public String addToCart(@PathVariable long bookId,@PathVariable int id,RedirectAttributes redirectAttributes)
	{
		Book book=bookRepo.findById(bookId).orElse(null);
		AdminUsers user=userRepo.findById(id).orElse(null);
		CartItem cartItem = new CartItem();
		cartItem.setBook(book);
		cartItem.setCart(user.getCart());
		cartItemRepo.save(cartItem);
	
		redirectAttributes.addAttribute("user", user);
		return "redirect:/products";
	}
	
	
	@RequestMapping("cart/{userId}")
	public String showCartItems(Model model,@PathVariable int userId)
	{
			AdminUsers user=userRepo.findById(userId).orElse(null);
			Cart cart = user.getCart();
			List<CartItem> cartItemList = cartItemRepo.getAllByCart(cart);
			List<Book> books=(List<Book>) cartItemList.stream().map(CartItem::getBook).collect(Collectors.toList());
			int totalBooks=books.size();
			double totalPrice=books.stream().mapToDouble(Book::getPrice).sum();
			model.addAttribute("books",books);
			model.addAttribute("totalBooks",totalBooks);
			model.addAttribute("totalPrice",totalPrice);
			model.addAttribute("cartId",cart.getCartId());
			return "ShopingCart";
	}
	
}



   
