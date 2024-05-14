package com.OnlineBooksStoreManage.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.OnlineBooksStoreManage.entities.Book;
import com.OnlineBooksStoreManage.entities.Cart;
import com.OnlineBooksStoreManage.entities.CartItem;
import com.OnlineBooksStoreManage.entities.Order;
import com.OnlineBooksStoreManage.entities.OrderItem;
import com.OnlineBooksStoreManage.repositry.CartRepo;
import com.OnlineBooksStoreManage.repositry.OrderItemRepo;
import com.OnlineBooksStoreManage.repositry.OrderRepo;

@Controller
public class OrderController {
	@Autowired
	private CartRepo cartRepo;

	@Autowired
	private OrderRepo orderRepo;

	@Autowired
	private OrderItemRepo orderItemRepo;

	@RequestMapping("/order/{cartId}")
	public String orderBooks(@PathVariable String cartId,RedirectAttributes redirectAttributes) {
		Cart cart = cartRepo.findById(Long.parseLong(cartId)).orElse(null);
		List<Book> books = (List<Book>) cart.getItems().stream().map(CartItem::getBook).collect(Collectors.toList());
		Order order = new Order();
		order.setOrderedDate(new Date());
		order.setUser(cart.getUser());
		Order savedOrder = orderRepo.save(order);

		books.stream().forEach(book -> {
			OrderItem orderItem = new OrderItem();
			orderItem.setBook(book);
			orderItem.setOrder(savedOrder);
			orderItemRepo.save(orderItem);
		});
		
		cart.setItems(new ArrayList<CartItem>());
		cartRepo.save(cart);

		redirectAttributes.addAttribute("user", cart.getUser());
		return "redirect:/products";
	}
	@RequestMapping("/pendingOrders")
	public String GetAllPendingOrders(Model model)
	{
		List<OrderItem> orderItems=orderItemRepo.findAll();
		List<Book> books=orderItems.stream().map(OrderItem::getBook).collect(Collectors.toList());
		List<Order> orders=orderRepo.findAll();
		model.addAttribute("orders", orders);
//		model.addAttribute("books", books);
		return "PendingOrder";
	}
//	@RequestMapping("/")
//	public String aproveOrder(Model model)
//	{
//		
//	}
	 
}
