package com.antriksh.app.model;

import javax.persistence.Entity;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

import lombok.Data;

@Entity
@Data
@Component
public class Reservation extends AbstractEntity {

	private boolean checkedIn;
	private Integer numberOfBags;
	@OneToOne
	private Passenger passenger;
	@OneToOne
	private Flight flight;
	
}
