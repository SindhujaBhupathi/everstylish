package com.everstylish;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.everstylish.dao.CategoryDAO;
import com.everstylish.dao.SupplierDAO;
import com.everstylish.dao.UserDAO;
import com.everstylish.model.Product;
import com.everstylish.model.User;

@Controller
public class HomeController {
	
	
	

	@Autowired
    CategoryDAO categoryDAO;
    
	@Autowired
    SupplierDAO supplierDAO;
	
	@Autowired
    UserDAO userDAO;
	
	
	   @RequestMapping("/login")
	    public String login(@RequestParam(value="error",required=false) String error,
	    		@RequestParam(value="logout",required=false) String logout,
	    		Model model){
	    	if(error!=null)
	    		model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
	    	if(logout!=null)
	    		model.addAttribute("logout","Loggedout successfully");
	    		model.addAttribute("LoginPageClicked", true);
	    	return "login";
	    	
	    }
	  
	    
	  
	  	@SuppressWarnings("unchecked")
		@RequestMapping(value = "/login_session_attributes")
		public String login_session_attributes(HttpSession session,Model model) {
	  		
			String email = SecurityContextHolder.getContext().getAuthentication().getName();
			
			User user = userDAO.get(email);
			session.setAttribute("userid", user.getId());
			session.setAttribute("name", user.getEmail());
			session.setAttribute("LoggedIn", "true");
			System.out.println(session.getAttribute("userid"));
			Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
			.getAuthentication().getAuthorities();
			String role="ROLE_USER";
			for (GrantedAuthority authority : authorities) 
			{
				session.setAttribute("user", user);
			  
			     if (authority.getAuthority().equals(role)) 
			     {
			    	 session.setAttribute("UserLoggedIn", "true");
			         return "redirect:/";
			     }
			     else 
			     {
			    	 session.setAttribute("Administrator", "true");
			    	 model.addAttribute("product",  new Product());
			    	 model.addAttribute("ProductPageClicked", "true");
			    	 model.addAttribute("supplierList",supplierDAO.retrieveSupplier());
			    	 model.addAttribute("categoryList",categoryDAO.retrieveCategory());
				 return "/admin";
			     }
		}
			
			return "/welcome";
		
		}
	    
	    
	    
	  
	  
	  
}