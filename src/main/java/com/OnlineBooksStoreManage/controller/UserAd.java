package com.OnlineBooksStoreManage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.OnlineBooksStoreManage.entities.AdminUsers;
import com.OnlineBooksStoreManage.entities.Book;
import com.OnlineBooksStoreManage.entities.Cart;
import com.OnlineBooksStoreManage.repositry.Addbooksrepo;
import com.OnlineBooksStoreManage.repositry.CartRepo;
import com.OnlineBooksStoreManage.repositry.UserAdminrepo;


@Controller
public class UserAd {
	@Autowired
	private UserAdminrepo urepo;
	@Autowired
	private  Addbooksrepo booksrepo;
	
	@Autowired
	private CartRepo cartRepo;
	
	@GetMapping("/")
	public String home()
	{
		return "BookStore";
	}
	@GetMapping("/UserAd")
	public String useradpage(@ModelAttribute AdminUsers ob)
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
		return "redirect:/";
	}
	@RequestMapping("/fetchusers")
	public String fetchUser(Model m)
	{
		List<AdminUsers> aa=urepo.findAll();
		m.addAttribute("fetchusers", aa);
		return "userfetchjsp";
	}
	@RequestMapping("user/{id}")
	public String getOneUser(@PathVariable int id,Model m)
	{
		AdminUsers user=urepo.findById(id).orElse(null);
		m.addAttribute("user", user);
		return "editUserData";
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
	public String getProducts(Model model, @RequestParam("user") AdminUsers obb) {
		List<Book> books=booksrepo.findAll();
		System.out.println(books);
		model.addAttribute("books", books);
		model.addAttribute("user", obb);
		return "User";
	}
	
}
