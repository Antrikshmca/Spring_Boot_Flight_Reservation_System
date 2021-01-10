package com.antriksh.app.model;

import javax.persistence.Entity;

import lombok.Data;

@Entity
@Data
public class User extends AbstractEntity {

	private String firstName;
	private String lastName;
	private String email;
	private String password;
}
