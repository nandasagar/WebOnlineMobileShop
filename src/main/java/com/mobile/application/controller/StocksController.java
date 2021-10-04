package com.mobile.application.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.mobile.application.model.StocksEntity;
import com.mobile.application.service.StocksService;

import org.springframework.ui.Model;

@Controller
public class StocksController {
	@Autowired
	StocksService itemService;

	@Autowired
	HttpServletRequest request;

	@RequestMapping("/stocks")
	public String producthome(Model model) {
		try {
			System.out.println(this.getClass().getSimpleName() + ":=======>Showing Products list.");
			model.addAttribute("products", itemService.getAllItems());
		} catch (Exception e) {
			System.out.print("Exception occured in list:" + e);
		}
		return "stocks";
	}

	@RequestMapping("/addstocks")
	public String add() {
		return "addstocks";
	}

	@RequestMapping(value = "deletee/{model}", method = RequestMethod.GET)
	public String delete(@PathVariable("model") int model, Model mod) {
		try {
			System.out.println(model);
			itemService.deleteItem(model);
			mod.addAttribute("products", itemService.getAllItems());
		} catch (Exception e) {
			System.out.println("exception occured in deleting item");
		}
		return "stocks";
	}

	@RequestMapping(value = "/savestocks", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("item") StocksEntity item, Model mod) {
		try {

			itemService.saveItem(item);
			mod.addAttribute("products", itemService.getAllItems());
		} catch (Exception e) {
			System.out.println("exception occured in save stocks");
		}

		return "stocks";
	}

}