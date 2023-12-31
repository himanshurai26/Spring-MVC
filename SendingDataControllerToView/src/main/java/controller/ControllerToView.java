package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControllerToView {

	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("This is Mode view  Page controller");
		model.addAttribute("name", "Himanshu Kumar");
		model.addAttribute("age", "21");
		model.addAttribute("city", "New Delhi");
		
		 List<String> list = new ArrayList<String>();
		 list.add("Shashank dangi");
		 list.add("Ujjwal");
		 list.add("Suman Saurav");
		 
		 model.addAttribute("friend", list);
		return "home";
	}
	
	@RequestMapping("/help")
	public ModelAndView modelandview() {
		
		ModelAndView modelAndview = new ModelAndView();
	   modelAndview.addObject("msg", "ModelAndView Attribute");
	   modelAndview.addObject("name", "Himanshu Kumar");
	   
	   modelAndview.setViewName("help");
		
		return modelAndview;
		
		
	}
}
