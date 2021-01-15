package com.antriksh.app.model;

import javax.persistence.Entity;

import org.springframework.stereotype.Component;

import lombok.Data;

@Entity
@Data
@Component
public class Passenger  extends AbstractEntity{
	private String firstName;
	private String middleName;
	private String lastName;
	private String email;
	private String phone;
	
}
