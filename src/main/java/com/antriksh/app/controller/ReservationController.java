package com.antriksh.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.antriksh.app.model.Reservation;
import com.antriksh.app.model.ReservationRequest;
import com.antriksh.app.service.IReservationService;

@Controller
public class ReservationController {
	@Autowired
	private IReservationService reservationservice;

	@RequestMapping("/completeReservation")
	public String confirmReservation(ReservationRequest reservation) {
		Reservation bookFlight = reservationservice.bookFlight(reservation);
		return "";
	}
}
