package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Cart;
import com.model.User;
import com.service.CartService;
import com.service.UserDAO;

@Controller
public class HomeController {

	
	
	/*
	 * @RequestMapping({ "/index", "/home" }) public String sayIndex() { return
	 * "home"; }
	 * 
	 * 
	 * @RequestMapping("/aboutus") public String sayAbout() { return "aboutUs"; }
	 */
	  	
	/*
	 * @RequestMapping("/searchProducts") public String searchProducts() { return
	 * "searchProducts"; }
	 * 
	 * @RequestMapping("/cart") public String cart() { return "searchProducts"; }
	 */
	
	
	
	@Autowired
	CartController cartController;

	@Autowired
	UserDAO userDAO;

//	@Autowired 
//	CartService cartService;
	
	@RequestMapping({ "/index", "/home" })
	public ModelAndView sayIndex(@RequestParam(value="uname", required=false) String uname, @RequestParam(value="email", required=false) String email,
			@RequestParam(value="name", required=false) String name, ModelAndView modelAndView) {
		
		modelAndView.setViewName("home");
		modelAndView.getModelMap().addAttribute("uname", uname);
		modelAndView.getModelMap().addAttribute("email", email);
		modelAndView.getModelMap().addAttribute("name", name);
		return modelAndView;
	}

	@RequestMapping("/aboutus")
	public ModelAndView sayAbout(@RequestParam(value="uname", required=false) String uname, @RequestParam(value="email", required=false) String email,
			@RequestParam(value="name", required=false) String name, ModelAndView modelAndView) {
		
		modelAndView.setViewName("aboutUs");
		modelAndView.getModelMap().addAttribute("uname", uname);
		modelAndView.getModelMap().addAttribute("email", email);
		modelAndView.getModelMap().addAttribute("name", name);
		return modelAndView;
	}

	@RequestMapping(value = "/contactus", method = RequestMethod.POST)
	public String contactUs(@RequestParam(value="uname", required=false) String uname, @RequestParam(value="email", required=false) String email,
			@RequestParam(value="name", required=false) String name, ModelAndView modelAndView) {
		return "contactus";

	}

	@RequestMapping("/searchProducts")
	public ModelAndView searchProducts(@RequestParam(value="uname", required=false) String uname, @RequestParam(value="email", required=false) String email,
			@RequestParam(value="name", required=false) String name, ModelAndView modelAndView) {
		
		System.out.println("entered searchProducts step"); 
		
		System.out.println("uname="+uname +"email="+email +"name="+name); 
		

		modelAndView.setViewName("searchProducts");
		modelAndView.getModelMap().addAttribute("uname", uname);
		modelAndView.getModelMap().addAttribute("email", email);
		modelAndView.getModelMap().addAttribute("name", name);
		return modelAndView;
	}

	@RequestMapping("/customer/signup")
	public ModelAndView signup() {
		ModelAndView mView = new ModelAndView("userZ");
		mView.getModelMap().put("userZ", new User());
		mView.setViewName("signup");
		return mView;
	}

	@RequestMapping(value = "/customer/registration", method = RequestMethod.POST)
	public String register(@ModelAttribute("userZ") User user, Model model) {

		System.out.println("entered Registration step");

		userDAO.addUser(user);
		model.addAttribute("uname", user.getFname() + " " + user.getLname());
		model.addAttribute("email", user.getEmail());
		return "home";
	}

	@RequestMapping("/myCart")
	public ModelAndView myCart(@RequestParam(value="uname", required=false) String uname, @RequestParam(value="email", required=false) String email,
			@RequestParam(value="name", required=false) String name, ModelAndView modelAndView) {
		
		System.out.println("My cart");
		modelAndView.getModelMap().addAttribute("uname", uname);
		modelAndView.getModelMap().addAttribute("email", email);
		modelAndView.getModelMap().addAttribute("name", name);
		modelAndView.setViewName("myCart");
		return modelAndView;
	}
	
	@RequestMapping(value="/addToCart", method = RequestMethod.POST)
	public ModelAndView addToCart(@RequestParam(value="uname", required=false) String uname, @RequestParam(value="email", required=false) String email,
			@RequestParam(value="name", required=false) String name,@RequestBody MultiValueMap map, ModelAndView modelAndView) {
		System.out.println("entered addToCart step");
		System.out.println(map.get("addProductName"));
		modelAndView.setViewName("myCart");
		System.out.println("adding to DB");
		Cart cart = new Cart();
		cart.setQuantity("2");
		cart.setUserId("test");
		cart.setAmazonIFrames(map.get("addProductName").toString());
		System.out.print(cart.toString());
		userDAO.addCart(cart);
		System.out.println("After adding to DB");
		modelAndView.getModelMap().addAttribute("uname", uname);
		modelAndView.getModelMap().addAttribute("email", email);
		modelAndView.getModelMap().addAttribute("name", name);
		return modelAndView;
	}

	@RequestMapping("/logout")
	public String logout() {
		return "home";
	}
	
	
	@RequestMapping(value = "/contactus")
	public String contactUs() {
		return "contactus";

	}

	@RequestMapping(value = "/services")
	public String services() {
		return "services";

	}
	
	@RequestMapping("/thankyou")
	public String thankyou() {
		return "thankyou";
	}
	
	
}
	
