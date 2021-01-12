package com.antriksh.app.service;

import org.springframework.stereotype.Service;

import com.antriksh.app.model.Reservation;
import com.antriksh.app.model.ReservationRequest;

@Service
public interface IReservationService {
	public Reservation bookFlight(ReservationRequest request);
}
