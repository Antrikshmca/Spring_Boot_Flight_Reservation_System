package com.antriksh.app.model;

import lombok.Data;

@Data
public class ReservationRequest {
	private String firstName;
	private String middleName;
	private String lastName;
	private String email;
	private String nameOfTheCard;
	private String cardNuber;
	private String cvvNumber;
	private String exNumber;
	
}
