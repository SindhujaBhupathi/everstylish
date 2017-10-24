package com.everstylish;

import java.util.List;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.everstylish.dao.SupplierDAO;
import com.everstylish.model.Supplier;

@Controller
public class SupplierController {
	 @Autowired
	    SupplierDAO supplierDAO;
	  
	

	    @RequestMapping(value="AddSupplier",method=RequestMethod.POST)
	 public String addSupplier(@ModelAttribute("supplier")Supplier supplier,Model m)
	    {
	        supplierDAO.addSupplier(supplier);
	         
	        List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
	        m.addAttribute("supplierList",listSupplier);
	         
	        return "redirect:supplier";
	    }
	    
	    @RequestMapping(value="/supplier",method=RequestMethod.GET)
	    public String showSupplier(Model m)
	    {
	        Supplier supplier=new Supplier();
	        m.addAttribute(supplier);
	         
	        List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
	        m.addAttribute("supplierList",listSupplier);
	        return "Supplier";
	    }
	    @RequestMapping(value="updateSupplier/{supId}",method=RequestMethod.GET)
	    public String updateSupplier(@PathVariable("supId") int supId,Model m)
	     {
	        Supplier supplier=supplierDAO.getSupplier(supId);
	        m.addAttribute("supplier",supplier);
	         
	        List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
	        m.addAttribute("supplierList",listSupplier);
	        return "Supplier";
	    }
	     
	    @RequestMapping(value="deleteSupplier/{supId}",method=RequestMethod.GET)
	    public String deleteSupplier(@PathVariable("supId")int supId,Model m)
	    {
	        Supplier supplier=supplierDAO.getSupplier(supId);
	        supplierDAO.deleteSupplier(supId);
	        List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
	        m.addAttribute("supplierList",listSupplier);
	        return "Supplier";
	    }	   
	  
			
	    }
