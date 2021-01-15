package com.antriksh.app.model;

import java.util.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Data
public class ReservationRequest {
	private String firstName;
	private String middleName;
	private String lastName;
	private String email;
	private String phone;
	private Long flightId;
	private String nameOfTheCard;
	private String cardNuber;
	private String cvvNumber;
	
	private String exNumber;
	
}
