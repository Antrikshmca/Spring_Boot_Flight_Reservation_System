package com.antriksh.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.antriksh.app.model.Reservation;
import com.antriksh.app.model.ReservationRequest;
import com.antriksh.app.repository.IReservationRepository;
import com.antriksh.app.service.IReservationService;
@Service
public class ReservationServiceImpl implements IReservationService {

	@Autowired
	private IReservationRepository repo;

	@Override
	public Reservation bookFlight(ReservationRequest request) {
		return null;
	}

}
