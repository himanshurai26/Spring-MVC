package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/first")
	public String home()
	{
		System.out.println("This is Home controllere");
		return "home";
	}
	
}
