package com.mobile.application.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import com.mobile.application.repository.ItemRepository;
import com.mobile.application.model.Item;
import com.mobile.application.model.User;

@Controller
@RequestMapping("/User") 
public class SearchController {
	
	@Autowired
	private ItemRepository itemRepo;
	
	@RequestMapping("/searchItem")
	public ModelAndView searchDish(@SessionAttribute("User")User user) {
		ModelAndView modelObject = new ModelAndView("Search");
		try {	
		  if(user.getEmail()==null) modelObject.addObject("msg",null);
		}
		catch(Exception exception)
		{
			System.out.println("Exception in Search" + exception);
		}
		return modelObject;	
	}

	@RequestMapping("/searchOprn")
	public ModelAndView searchDishOpr(String search_Item,@SessionAttribute("User")User user) {
		ModelAndView modelObject = new ModelAndView("Search");
		try {
		List<Item> item = (List<Item>) itemRepo.findAll();
		List<Item> Res = new ArrayList<Item>();
		
		for(var list : item)	
		{
			if((list.getItemname().contains(search_Item.toUpperCase())))
				Res.add(list);
		}
		System.out.println(Res);	
		String email=user.getEmail();
		modelObject.addObject("email",email);
		modelObject.addObject("SearchRes",Res);
		modelObject.addObject("search_key", search_Item);
		if(user.getEmail()==null) modelObject.addObject("msg",null);	
		if(Res.isEmpty())		
			modelObject.addObject("msg", "No Result Found for Search ");
		}catch(Exception exception)
		{
			System.out.println("Exception in Search Display" + exception);
		}
		return modelObject;	
	}

}