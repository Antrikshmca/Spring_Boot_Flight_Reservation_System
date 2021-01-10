package com.antriksh.app.model;

import javax.persistence.Entity;

import lombok.Data;

@Entity
@Data
public class Passenger  extends AbstractEntity{
	private String firstName;
	private String middleName;
	private String lastName;
	private String email;
	private String phone;
}
