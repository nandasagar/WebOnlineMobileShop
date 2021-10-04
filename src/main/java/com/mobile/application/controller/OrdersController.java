package com.mobile.application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import com.mobile.application.model.Cart;
import com.mobile.application.model.Item;
import com.mobile.application.model.Orders;
import com.mobile.application.model.Payment;
import com.mobile.application.model.User;
import com.mobile.application.repository.CartRepository;
import com.mobile.application.repository.ItemRepository;
import com.mobile.application.repository.OrdersRepository;
import com.mobile.application.repository.PaymentRepository;

@Controller
@RequestMapping("/User")

public class OrdersController {

	@Autowired
	private OrdersRepository orderRepository;
	@Autowired
	private CartRepository cartRepository;

	@Autowired
	private ItemRepository itemRepository;

	@Autowired
	private PaymentRepository paymentRepository;

	@PostMapping(value = "/save-orders")
	public ModelAndView getDatas(Model models, @SessionAttribute("User") User users) {
		ModelAndView modelObject = new ModelAndView("orders2");
		try {
			List<Cart> cart = (List<Cart>) cartRepository.findAllByEmail(users.getEmail());

			System.out.println(cart);
			for (var iterate : cart) {
				Orders order = new Orders();
				order.setAddress("IN");
				order.setEmail(users.getEmail());
				order.setItemname(iterate.getItemname());
				order.setModel(iterate.getModel());
				order.setQuantity(iterate.getQuantity());
				order.setTotal(iterate.getTotal());
				orderRepository.save(order);
				cartRepository.deleteById(iterate.getCartid());
				Item item = itemRepository.findById(iterate.getModel()).get();
				item.setQuantity_available(item.getQuantity_available() - iterate.getQuantity());
				itemRepository.save(item);
			}
			List<Orders> order = orderRepository.findAllByEmail(users.getEmail());
			int sum = 0;
			for (var iterate : order) {
				int total = iterate.getTotal();
				sum = sum + total;
			}

			modelObject.addObject("multiple", order);
			modelObject.addObject("total", sum);
		} catch (Exception exception) {
			System.out.println("Exception in Save Orders" + exception);
		}
		return modelObject;
	}

	@PostMapping("/removeOrder/{orderid}")
	public ModelAndView remove(@PathVariable("orderid") int orderid, @SessionAttribute("User") User user) {

		ModelAndView modelObject = new ModelAndView("orders2");

		try {
			orderRepository.deleteById(orderid);
			List<Orders> order = (List<Orders>) orderRepository.findAllByEmail(user.getEmail());
			int sum = 0;
			for (var iterate : order) {
				int total = iterate.getTotal();
				sum = sum + total;
			}
			modelObject.addObject("total", sum);
			modelObject.addObject("multiple", order);

		} catch (Exception exception) {
			System.out.println("Exception in Remove Orders" + exception);
		}
		return modelObject;
	}

	@PostMapping(value = "/getorder")
	public String getOrderList(Model model, @SessionAttribute("User") User users) {

		try {
			List<Payment> newOrders = (List<Payment>) paymentRepository.findAllByEmail(users.getEmail());
			System.out.println(newOrders);

			model.addAttribute("list", newOrders);
			if (newOrders.isEmpty()) {
				model.addAttribute("msg", "No Items Ordered ");
			}
		} catch (Exception exception) {
			System.out.println("Exception in Successfull orders" + exception);
		}
		return "allorder";
	}
}
