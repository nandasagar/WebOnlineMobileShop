package com.mobile.application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.mobile.application.model.Image;
import com.mobile.application.model.Item;
import com.mobile.application.model.User;
import com.mobile.application.repository.ItemRepository;
import com.mobile.application.repository.PaymentRepository;
import com.mobile.application.repository.UserRepository;
import com.mobile.application.service.ItemServicesAdmin;
import com.mobile.application.service.UserServicesAdmin;

@Controller
@RequestMapping("/Admin")
public class AdminController {
	@Autowired
	PaymentRepository paymentRepo;

	@Autowired
	ItemServicesAdmin itemService;

	@Autowired
	UserServicesAdmin userService;
	UserRepository userRepo;

	@Autowired
	ItemRepository itemRepo;

	Image image = new Image();

	@RequestMapping(value = "/users")
	public String userList(ModelMap mod, @SessionAttribute("Admin") User users) {
		try {
			mod.put("users", userService.getAllUsers());
		} catch (Exception exception) {
			System.out.printf("User Data not found", exception.getMessage());
		}
		return "users";
	}

	@RequestMapping(value = "/ordersadmin")
	public String orderList(ModelMap mod, @SessionAttribute("Admin") User users) {
		try {
			mod.put("orders", paymentRepo.findAll());
			mod.put("path", "Images/");
		} catch (Exception exception) {
			System.out.printf("Order Data not found", exception.getMessage());
		}
		return "ordersadmin";
	}

	@RequestMapping(value = "/products")
	public String productList(ModelMap mod, @SessionAttribute("Admin") User users) {
		try {
			mod.put("products", itemService.getAllItems());
			mod.put("path", "Images/");
		} catch (Exception exception) {
			System.out.printf("Product Data not found", exception.getMessage());
		}
		return "products";
	}

	@RequestMapping("/addproduct")
	public String addP(@SessionAttribute("Admin") User users) {
		return "addproduct";
	}

	@RequestMapping("/delete/{model}")
	public ModelAndView deleteItem(@PathVariable("model") int model, @SessionAttribute("Admin") User users) {
		ModelAndView mav = new ModelAndView("products");
		try {
			itemService.deleteItem(model);
			mav.addObject("products", itemService.getAllItems());
			mav.addObject("path", "../Images/");
		} catch (Exception exception) {
			System.out.printf(" Data was not deleted", exception.getMessage());
		}
		return mav;
	}

	@RequestMapping(value = "/saveitem")
	public ModelAndView addNewProduct(Item item, @SessionAttribute("Admin") User users) {
		ModelAndView mav = new ModelAndView("products");
		List<String> img = image.imageList();
		try {
			for (var i : img) {
				System.out.println(item.getItemname());
				if (i.equalsIgnoreCase(item.getItemname())) {
					String str = item.getItemname() + ".jpg";
					item.setImage(str);
					;
					break;
				}
			}
			itemService.saveItem(item);
			System.out.println(this.getClass().getSimpleName() + ":=======>Item saved");
			mav.addObject(item);
			mav.addObject("products", itemService.getAllItems());
			mav.addObject("path", "Images/");
		} catch (Exception exception) {
			System.out.printf(" Data was not added", exception.getMessage());
		}
		return mav;
	}

	@RequestMapping(value = "/update/{model}", method = RequestMethod.GET)
	public ModelAndView updateItem(@PathVariable int model, @SessionAttribute("Admin") User users) {
		ModelAndView mod = new ModelAndView();
		try {
			Item items = itemService.getItemByModel(model);
			mod.addObject("item", items);
			mod.setViewName("update");
		} catch (Exception exception) {
			System.out.printf(" Data was not updated", exception.getMessage());
		}
		return mod;
	}

	@RequestMapping(value = "/savep", method = { RequestMethod.GET, RequestMethod.POST })
	public String saveUpdate(@ModelAttribute("item") Item item, Model mod, @SessionAttribute("Admin") User users) {
		try {
			itemService.saveItem(item);
			mod.addAttribute("products", itemService.getAllItems());
		} catch (Exception exception) {
			System.out.printf(" Data was not saved", exception.getMessage());
		}
		return "products";
	}
}
