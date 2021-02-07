package com.antriksh.app.service.impl;

import java.io.File;
import java.util.Optional;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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
	private JavaMailSender javaMailSender;

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
	//private String filePath="C:\\Users\\Antriksh\\Desktop\\Ticket\\books+reservation.getId()+.pdf";
	
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
		 String filePath="E:\\PSA\\Spring_Boot_Flight_Reservation\\PDFDocs\\books+reservation.getId()+.pdf";
		PDFGenerator pdf=new PDFGenerator();
		pdf.generatePDF(filePath, request.getFirstName(), request.getEmail(), request.getPhone(), flight.getOperatingAirlines(),
				 flight.getDepartureCity(),flight.getArrivalCity(),flight.getDateOfDeparture());
		System.out.println("pdf created");
		
		
		MimeMessage message = javaMailSender.createMimeMessage();
		try {
		MimeMessageHelper msg=new MimeMessageHelper(message,true);
		msg.setFrom("antrikshsrivastava111@gmail.com");
		msg.setTo(request.getEmail());
		msg.setSubject("Booked Flight");
		msg.setText("Hello",true);
		
		msg.addAttachment("Attachment", new File(filePath));
		
		javaMailSender.send(message);
		System.out.println("sent mail");
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		return reservation;
	}

}
