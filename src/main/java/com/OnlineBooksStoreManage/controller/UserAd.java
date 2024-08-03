package com.OnlineBooksStoreManage.controller;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.OnlineBooksStoreManage.entities.AdminUsers;
import com.OnlineBooksStoreManage.entities.Book;
import com.OnlineBooksStoreManage.entities.Cart;
import com.OnlineBooksStoreManage.entities.CartItem;
import com.OnlineBooksStoreManage.entities.Order;
import com.OnlineBooksStoreManage.entities.OrderItem;
import com.OnlineBooksStoreManage.repositry.Addbooksrepo;
import com.OnlineBooksStoreManage.repositry.CartItemRepo;
import com.OnlineBooksStoreManage.repositry.CartRepo;
import com.OnlineBooksStoreManage.repositry.OrderRepo;
import com.OnlineBooksStoreManage.repositry.UserAdminrepo;


@Controller
public class UserAd {
	@Autowired
	private UserAdminrepo urepo;
	@Autowired
	private  Addbooksrepo booksrepo;
	
	@Autowired
	private CartRepo cartRepo;
	
	@Autowired
	private OrderRepo orderRepo;
	
	@Autowired
	private CartItemRepo cartItemRepo;
	
//	@Autowired
//	private OrderItem orderitemRepo;
	
	@GetMapping("/")
	public String home()
	{
		return "BookStore";
	}
	@GetMapping("/UserAd")
	public String useradpage(@ModelAttribute AdminUsers ob,Model model)
	{
		System.out.println(ob);
		Cart cart = null;
		if(ob.getCart() == null ) {
			cart = new Cart();
		}
		cart.setUser(ob);
		ob.setCart(cart);
		cartRepo.save(cart);
//		urepo.save(ob);
		return "redirect:/?success=true";
	}
	@RequestMapping("/fetchusers")
	public String fetchUser(Model m)
	{
		List<AdminUsers> aa=urepo.findAll();
		m.addAttribute("fetchusers", aa);
		return "userfetchjsp";
	}
	@RequestMapping("/userProfile/{id}")
	public String getOneUser(@PathVariable("id") int id,Model m)
	{
		AdminUsers user=urepo.findById(id).orElse(null);
		m.addAttribute("user", user);
		return "getUserData";
	}
	@RequestMapping("/ViewDetailsUser/{id}")
	public String getUserDetils(@PathVariable int id,Model model)
	{
		AdminUsers user=urepo.findById(id).orElse(null);
		model.addAttribute("getUserDetails", user);
		return "editUserDetils";
	}
	@RequestMapping("/editUser/{userId}")
	public String editUserDetails(@PathVariable("userId") int userId,@ModelAttribute AdminUsers user,RedirectAttributes redirectAttributes)
	{
		AdminUsers userDetils=urepo.findById(userId).orElse(null);
		if(userDetils!=null)
		{
			userDetils.setFullname(user.getFullname());
			userDetils.setEmail(user.getEmail());
			userDetils.setPhoneno(user.getPhoneno());
			userDetils.setAddress(user.getAddress());
			userDetils.setPassword(user.getPassword());
			urepo.save(userDetils);
		}
		return "redirect:/userProfile/{userId}";
	}
	@RequestMapping("/")
	public String requestMethodName() {
		return new String();
	}

	@PostMapping("/login")
	public String register(@RequestParam String email, @RequestParam String password,Model model, RedirectAttributes redirectAttributes)
	{
		System.out.println(email);
		System.out.println(password);
		AdminUsers obb=urepo.findByemail(email);
		if(obb!=null && obb.getEmail().equalsIgnoreCase(email) && obb.getPassword().equals(password) && obb.getRole().equals("admin"))
		{
			return "AdminDashboard";
		}
		else if(obb!=null && obb.getEmail().equalsIgnoreCase(email) && obb.getPassword().equals(password))
		{
			redirectAttributes.addAttribute("user", obb);
			return "redirect:/products";

		}
		else
		{
			return "login1";
		}
	}
	@GetMapping("/products")
	public String getProducts(Model model, @RequestParam("user") AdminUsers obb,@RequestParam("cartMessage") Optional<String> cartMessage) {
		List<Book> books=booksrepo.findAll();
		System.out.println(books);
//		 AdminUsers custmor=urepo.findById().orElse(null); 
		Cart cart = obb.getCart();
		List<CartItem> cartItemList = cartItemRepo.getAllByCart(cart);
		List<Book> booksitem=(List<Book>) cartItemList.stream().map(CartItem::getBook).collect(Collectors.toList());
		int totalBooks=booksitem.size();
		model.addAttribute("books", books);
		model.addAttribute("user", obb);
		model.addAttribute("cartBooks", totalBooks);
		if(!cartMessage.isEmpty())
		{
			model.addAttribute("cartMessage", cartMessage.get());
		}
		
		return "User";
	}
	@RequestMapping("/userBooks/{userId}")
	public String getUserBooks(@PathVariable("userId") String id,Model model)
	{
		int userid=Integer.parseInt(id);
		AdminUsers user=urepo.findById(userid).orElse(null); 
		List<Order> orders=user.getOrder();
		List<Order> approvedOrders = orders.stream().filter(order-> order.getStatus() != null && order.getStatus().equals("Approved") ).collect(Collectors.toList());
		List<OrderItem> orderItems=approvedOrders.stream().flatMap(order->order.getOrderItems().stream()).collect(Collectors.toList());
		List<Book> books=orderItems.stream().map(ordertItem->ordertItem.getBook()).collect(Collectors.toList());
		
//		Book book=orderitemRepo.getBook();
//		List<List<OrderItem>> orderItems1 = orders.stream().map(Order::getOrderItems).collect(Collectors.toList());
		
//		List<Book> books=(List<Books>) orderItems.stream().map(OrderItem::getBook).collect(Collectors.toList());
		 model.addAttribute("purchasedBooks", books);
		 model.addAttribute("userdata", user);
		return "MyBooks";
		
	}
	
	   @PostMapping("/logout")
	    public String logout(HttpSession session, RedirectAttributes redirectAttributes) {
	        session.invalidate(); // Invalidate the session
	        redirectAttributes.addFlashAttribute("logoutMessage", "You have been logged out successfully.");
	        return "redirect:/"; // Redirect to the login page
	    }
}
