package com.everstylish;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.everstylish.dao.UserDAO;
import com.everstylish.model.User;

@Controller
//we used controller
public class indexcontroller
{

@Autowired
private UserDAO userDAO;
	
@RequestMapping("/")
public String index()
{
	return "index";
}

@RequestMapping("/signUp")
public String goToRegisterPage(@ModelAttribute("user") User user,Model model)
{
	
	model.addAttribute("user",new User());
	
	return "signUp";


}

@RequestMapping("/saveUser")
public String createUser(@ModelAttribute("user") User user)
{
 
	user.setRole("ROLE_USER");
	user.setEnabled(true);
	userDAO.saveUser(user);
	return "index";
}


}