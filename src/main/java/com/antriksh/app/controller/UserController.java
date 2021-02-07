package com.antriksh.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.antriksh.app.model.User;
import com.antriksh.app.repository.IUserRepository;

@Controller
public class UserController {

	@Autowired
	private IUserRepository userRepo;

	@RequestMapping("/about")
	public String about(Model map) {
		map.addAttribute("tittle", "about-Smart Contact Managert");

		return "about";

	}
	@RequestMapping("/showLoginPage")
	public String showloginPage() {

		return "login/login";
	}

	@RequestMapping({"/","index","home","default"})
	public String indexPage() {

		return "base";
	}

	@RequestMapping(value = "/showReg")
	public String showRegistrations() {
		return "login/showReg";
	}
	
	  @RequestMapping(value = "/showRegg") 
	  public String showRegistration() {
	  return "login/flightDetails"; }
	 

	
	  @RequestMapping("/saveReg") 
	  public String saveReg(@ModelAttribute("user") User user) {
	   userRepo.save(user);
	   return "login/login"; }
	 
	


	@RequestMapping("/verifyLogin")
	public String verifyLogin(@RequestParam("email") String email, @RequestParam("password") String password,
			ModelMap map) {

		User user = userRepo.findByEmail(email);
		if (user != null) {
			if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
				return "findFlights";
			} else {
				map.addAttribute("error", "inavlid username / password");
				return "login/login";
			}
		} else {

			map.addAttribute("error", "inavlid username / password");
			return "login/login";
		}
	}
}