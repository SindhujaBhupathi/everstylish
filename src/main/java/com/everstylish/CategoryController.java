package com.everstylish;
import java.util.List;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.everstylish.dao.CategoryDAO;
//import com.everstylish.model.Category;
import com.everstylish.model.Category;



@Controller
public class CategoryController {
	
	@Autowired
	    CategoryDAO categoryDAO;
	

	  @RequestMapping(value="category",method=RequestMethod.GET)
	    public String showCategory(Model m)
	    {
	        Category category=new Category();
	        m.addAttribute(category);
	         
	        List<Category> listCategory=categoryDAO.retrieveCategory();
	        m.addAttribute("categoryList",listCategory);
	        return "Category";
	    }
	
	   @RequestMapping(value="AddCategory",method=RequestMethod.POST)
	 public String addCategory(@ModelAttribute("category")Category category,Model m)
	    {
	        categoryDAO.addCategory(category);
	        
	        return "redirect:category";
	    }
	    
	    
		@RequestMapping(value="category",method=RequestMethod.GET)
	    public String showCategory(@ModelAttribute("category")Category category,Model m)
	    {
	         
	        List<Category> listCategory=categoryDAO.retrieveCategory();
	        m.addAttribute("category", new Category());
	        m.addAttribute("categoryList",listCategory);
	        return "category";
	    }
	    
		/* @RequestMapping(value="/updateCategory/{catId}",method=RequestMethod.GET)
		    public String updateCategory(@PathVariable("catId") int catId,Model m,RedirectAttributes attributes)
		     {
			 categoryDAO.updateCategory(catId);
				return "redirect:/category";
		    }*/
	    
		 @RequestMapping(value="updateCategory/{catId}",method=RequestMethod.GET)
		    public String updateCategory(@PathVariable("catId") int catId,Model m)
		    {
		        Category category=categoryDAO.getCategory(catId);
		        m.addAttribute(category);
		         
		        List<Category> listCategory=categoryDAO.retrieveCategory();
		        m.addAttribute("categoryList",listCategory);
		        return "Category";
		    }
	    
	    @RequestMapping(value="/deleteCategory/{catId}",method=RequestMethod.GET)
	    public String deleteCategory(@PathVariable("catId")int catId,Model m,RedirectAttributes attributes)
	    {	
	    	categoryDAO.deleteCategory(catId);
			return "redirect:/category";
			
	    }

}