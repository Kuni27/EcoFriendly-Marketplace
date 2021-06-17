package com.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {

	@RequestMapping({ "/index", "/index1" })
	public String sayIndex() {
		return "index1";
	}

	
	
	@RequestMapping("/aboutus")
	public String sayAbout() {
		return "aboutUs";
	}


	@RequestMapping(value = "/contactus", method = RequestMethod.POST)
	public String contactUs() {
		return "";

	}
	
	@RequestMapping("/searchProducts")
	public String searchProducts() {
		return "searchProducts";
	}
	
	
}
	
