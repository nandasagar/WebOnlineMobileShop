package com.mobile.application.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.mobile.application.model.User;
import com.mobile.application.repository.UserRepository;

@Controller
@SessionAttributes("User")
public class LoginController {

	@ModelAttribute("User")
	public User setUp() {
		return new User();
	}

	@Autowired
	private UserRepository userRepository;

	@PostMapping(path = "/save-user")
	public ModelAndView registerUser(User user, Model model) {

		String ret = "register";
		String email = user.getEmail();
		String regex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
		if (email.matches(regex)) {
			userRepository.save(user);
			ret = "home";
		} else
			ret = "register";
		ModelAndView mode = new ModelAndView(ret);
		mode.addObject("l", user);
		return mode;
	}

	@PostMapping("/validateuser")
	public ModelAndView ValidateUser(@ModelAttribute("User") User user, Model model, HttpServletRequest request) {
		String email = user.getEmail();
		List<User> l = (List<User>) userRepository.findByEmail(email);
		String userName = null;
		String ret = "login";
		for (var l1 : l) {
			if ((l1.getPassword().equals(user.getPassword()))) {
				userName = l1.getUserName();
				ret = "welcome";
			} else
				ret = "error";
		}

		ModelAndView mode = new ModelAndView(ret);
		mode.addObject("l", userName);
		mode.addObject("message", "Enter Valid Credentials");
		mode.addObject("msg", "USER");
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(900);
		return mode;
	}

}