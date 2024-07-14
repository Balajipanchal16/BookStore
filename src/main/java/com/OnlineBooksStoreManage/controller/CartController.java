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
	public String addToCart(@PathVariable long bookId, @PathVariable int id, RedirectAttributes redirectAttributes) {
		AdminUsers user = userRepo.findById(id).orElse(null);
		if (user.getCart().getItems().stream().anyMatch(item -> item.getBook().getBookId() == bookId)) {
			redirectAttributes.addAttribute("user", user);
			redirectAttributes.addAttribute("cartMessage", "Already added in cart !! ");
			return "redirect:/products";
		}

		Book book = bookRepo.findById(bookId).orElse(null);

		CartItem cartItem = new CartItem();
		cartItem.setBook(book);

		cartItem.setCart(user.getCart());
		cartItemRepo.save(cartItem);

		redirectAttributes.addAttribute("user", user);
		return "redirect:/products";
	}

	@RequestMapping("/remove/{bookId}/{cartId}")
	public String removeCartItem(@PathVariable long bookId, @PathVariable long cartId,
			RedirectAttributes redirectAttributes,Model model) {
//		Book book=bookRepo.findById(bookId).orElse(null);
		Cart cart = cartRepo.findById(cartId).orElse(null);
//
//		List<CartItem> cartItems = cart.getItems();
//		CartItem cartItem = cartItems.stream().filter(cItem -> cItem.getBook().getBookId() == bookId)
//				.findFirst().orElseThrow(() -> new RuntimeException("Cart item not found"));
////		cartItemRepo.deleteById(cartItem.getCartItemId());
//		cartItemRepo.deleteAll();
//		cartItemRepo.delete(cartItem);
		
		cartItemRepo.deleteByBookIdAndCartId(bookId, cartId);

		redirectAttributes.addAttribute("userId", Integer.valueOf(cart.getUser().getId()));
//		model.addAttribute("userId",Integer.valueOf(cart.getUser().getId()));
		return "redirect:/cart/{userId}";

	}

	@RequestMapping("/cart/{userId}")
	public String showCartItems(Model model, @PathVariable int userId) {
		AdminUsers user = userRepo.findById(userId).orElse(null);
		Cart cart = user.getCart();
		List<CartItem> cartItemList = cartItemRepo.getAllByCart(cart);
		List<Book> books = (List<Book>) cartItemList.stream().map(CartItem::getBook).collect(Collectors.toList());
		int totalBooks = books.size();
		double totalPrice = books.stream().mapToDouble(Book::getPrice).sum();
		model.addAttribute("books", books);
		model.addAttribute("totalBooks", totalBooks);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("cartId", cart.getCartId());
		model.addAttribute("cartItem", cartItemList);
		return "ShopingCart";
	}

}
