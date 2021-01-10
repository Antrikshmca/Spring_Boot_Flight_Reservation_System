package com.antriksh.app.model;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Entity
@Data
public class Flight extends AbstractEntity {

	private String flightNumber;
	private String operatingAirlines;
	private String departureCity;
	private String arrivalCity;
	@Temporal(TemporalType.DATE)
	private Date dateOfDeparture =new Date(System.currentTimeMillis());
	@Temporal(TemporalType.TIMESTAMP)
	private Date estimatedDepartureTime=new Date(System.currentTimeMillis());;
}
