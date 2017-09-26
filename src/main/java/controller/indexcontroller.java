package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexcontroller
{

	@RequestMapping("/")
public String index()
{
	return "index";
}
	

	@RequestMapping("/hello")
	public String headerPage(Model model)
	{
		
		model.addAttribute("message","Welcome to Spring MVC");
		return "header";
	}

	
}