package com.antriksh.app.service.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.antriksh.app.model.Flight;
import com.antriksh.app.model.Passenger;
import com.antriksh.app.model.Reservation;
import com.antriksh.app.model.ReservationRequest;
import com.antriksh.app.pdf.utilities.PDFGenerator;
import com.antriksh.app.repository.IFlightRepository;
import com.antriksh.app.repository.IPassengerRepository;
import com.antriksh.app.repository.IReservationRepository;
import com.antriksh.app.service.IReservationService;
@Service
public class ReservationServiceImpl implements IReservationService {

	@Autowired
	private Reservation reservation;
	@Autowired
	private IFlightRepository frepo;
	@Autowired
	private IPassengerRepository prepo;
	@Autowired
	private Passenger pas;
	@Autowired
	private IReservationRepository repo;

	//private String filePath="E:\\tickets\\booking\\book";
	private String filePath="C:\\Users\\Antriksh\\Desktop\\Ticket\\books";
	@Override
	public Reservation bookFlight(ReservationRequest request) {
		pas.setFirstName(request.getFirstName());
		pas.setLastName(request.getLastName());
		pas.setMiddleName(request.getMiddleName());
		pas.setEmail(request.getEmail());
		pas.setPhone(request.getPhone());
		prepo.save(pas);
		
		Long flightId = request.getFlightId();
		Optional<Flight> findById = frepo.findById(flightId);
		Flight flight = findById.get();
		
		reservation.setFlight(flight);
		reservation.setPassenger(pas);
		reservation.setCheckedIn(false);
		reservation.setNumberOfBags(0);
		
		repo.save(reservation);
		PDFGenerator pdf=new PDFGenerator();
		pdf.generatePDF(filePath+reservation.getId()+".pdf", request.getFirstName(), request.getEmail(), request.getPhone(), flight.getOperatingAirlines(),
				flight.getArrivalCity(), flight.getDepartureCity(),flight.getArrivalCity());
		System.out.println("pdf created");
		return reservation;
	}

}
