package com.antriksh.app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Student {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private Long mobile;
	private String country;
}
