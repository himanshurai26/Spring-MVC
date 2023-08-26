package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public String home()
	{
		
		System.out.println("This is Home Controller class..");
		return "home";
	}
	
	@RequestMapping("/about")
	public String about()
	{
		System.out.println("This is About controller page..");
		
		return "about";
	}
}
