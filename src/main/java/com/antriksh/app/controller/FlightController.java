package com.antriksh.app.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.antriksh.app.model.Flight;
import com.antriksh.app.repository.IFlightRepository;

@Controller
public class FlightController {

	@Autowired
	private IFlightRepository flightRepo;
	 @RequestMapping("/findFlights")
	public String findf(ModelMap map) {
		List<Flight> findAll = flightRepo.findAll();
		//findAll.forEach(System.out::println);
		map.addAttribute("findFlights",findAll);
		return "displayFlights";
	}

	@RequestMapping(value = "/flightReg")
	public String showRegistration() {
		return "flight/flightDetails";
	}

	@RequestMapping("/saveFlight")
	public String saveReg(@ModelAttribute("flight") Flight flight) {
		flightRepo.save(flight);
		
		return "flight/flightDetailsSave";
	}

	
	/*
	 * @RequestMapping("/findFlights") public String
	 * 
	 * findFlight(@RequestParam("from") String from, @RequestParam("to") String to,
	 * 
	 * @RequestParam("departureDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date
	 * departureDate, ModelMap modelMap) { List<Flight> findFlight =
	 * flightRepo.findFlights(from, to, departureDate);
	 * System.out.println(findFlight); // findFlights.forEach(System.out::println);
	 * modelMap.addAttribute("findFlights", findFlight); return "displayFlights"; }
	 */
	 

	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam("flightId") Long flightId, ModelMap map) {
		Optional<Flight> findById = flightRepo.findById(flightId);
		Flight flight = findById.get();
		System.out.println(flight);
		map.addAttribute("flight", flight);
		return "showReservation";
	}
	
}