package com.antriksh.app.model;

import javax.persistence.Entity;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class Reservation extends AbstractEntity {

	private boolean checkedIn;
	private Integer numberOfBags;
	@OneToOne
	private Passenger passenger;
	@OneToOne
	private Flight flight;
	
}
