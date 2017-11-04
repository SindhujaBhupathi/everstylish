
package com.everstylish;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.everstylish.dao.ProductDAO;
import com.everstylish.model.Product;


@Controller
@RequestMapping("/myImage")
public class ImageController {
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value = "/imageDisplay", method = RequestMethod.GET)
	  public void showImage(@RequestParam("id") int id, HttpServletResponse response,HttpServletRequest request) 
			  throws ServletException, IOException{
		
		System.out.println(id);
		Product item = productDAO.getItem(id);
		System.out.println(id);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		response.getOutputStream().write(item.getImage());
		
		System.out.println("Image is");
	
		response.getOutputStream().close();
}}
