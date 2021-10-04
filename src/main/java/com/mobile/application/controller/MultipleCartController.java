
package com.mobile.application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.mobile.application.model.Cart;
import com.mobile.application.model.Item;
import com.mobile.application.model.User;
import com.mobile.application.repository.CartRepository;
import com.mobile.application.service.ItemService;

@Controller
@RequestMapping("/User")
public class MultipleCartController {
	@Autowired
	private ItemService itemService;

	@Autowired
	private CartRepository cartRepository;

	@PostMapping(value = "/addcart/{modelType}")
	public String getData(@PathVariable("modelType") int modelType, Model models,
			@SessionAttribute("User") User users) {
		Item itemdta = itemService.findById(Integer.valueOf(modelType));

		String email = users.getEmail();
		System.out.println(email);
		System.out.println("Session");
		System.out.println("ADDCART NA");
		models.addAttribute("itemdta", itemdta);
		models.addAttribute("email", email);
		return "addcart";

	}

	@PostMapping(value = "/saveToCart")
	public ModelAndView saveData(Cart cart, @RequestParam("model") int model, @RequestParam("price") int price,
			@RequestParam("qty") int qty, @RequestParam("total") int total, Model mode,
			@SessionAttribute("User") User users, Model model1) {
		Item itemdta = itemService.findById(Integer.valueOf(model));
		ModelAndView model11 = new ModelAndView("page");
		ModelAndView model12 = new ModelAndView("mycart2");
		try {
			if (itemdta.getQuantity_available() < qty) {
				model11.addObject("msg", " Quantity not available please give available quantity");
				return model11;
			}

			String email = users.getEmail();
			cart.setEmail(email);
			cart.setModel(model);
			cart.setPrice(price);
			cart.setQuantity(qty);
			cart.setTotal(total);
			System.out.println(cart);
			System.out.println(cartRepository.save(cart));

			mode.addAttribute("email", cart);

			List<Cart> newCart = cartRepository.findAllByEmail(email);
			int sum = 0;
			for (var iterate : newCart) {
				int tot = iterate.getTotal();
				sum = sum + tot;
			}
			model1.addAttribute("total", sum);

			System.out.println(newCart);
			model1.addAttribute("cart", newCart);
		} catch (Exception e) {
			System.out.println("exception occured in saveCart:" + e);
		}
		return model12;
	}

	@PostMapping(value = "/getcart")
	public ModelAndView getCartList(@SessionAttribute("User") User users, Model model1) {
		ModelAndView model = new ModelAndView("mycart2");
		try {

			List<Cart> newCart = cartRepository.findAllByEmail(users.getEmail());
			int sum = 0;
			for (var iterate : newCart) {
				int tot = iterate.getTotal();
				sum = sum + tot;
			}
			model1.addAttribute("total", sum);
			model1.addAttribute("cart", newCart);
		} catch (Exception e) {
			System.out.println("exception occured in saveCart:" + e);
		}
		return model;
	}

	@PostMapping("/remove/{cartid}")
	public ModelAndView remove(@PathVariable("cartid") int cartid, @SessionAttribute("User") User user) {

		ModelAndView model = new ModelAndView("mycart2");
		try {
			cartRepository.deleteById(cartid);
			System.out.println("Deleted");
			List<Cart> carte = (List<Cart>) cartRepository.findAllByEmail(user.getEmail());
			int sum = 0;
			for (var iterate : carte) {
				int total = iterate.getTotal();
				sum = sum + total;
			}
			model.addObject("total", sum);
			model.addObject("cart", carte);
		} catch (Exception e) {
			System.out.println("exception occured in remove cartid" + e);
		}
		return model;

	}

	@RequestMapping("/allcart")
	public ModelAndView home(Model model, @SessionAttribute("User") User user) {

		System.out.println(this.getClass().getSimpleName() + ":=======>Showing cart list.");
		List<Cart> res = (List<Cart>) cartRepository.findAllByEmail(user.getEmail());

		ModelAndView mv = new ModelAndView("allcart");
		mv.addObject("list", res);

		if (res.isEmpty()) {
			mv.addObject("msg", "No Items Added into the Cart ");
		}
		return mv;
	}

}
