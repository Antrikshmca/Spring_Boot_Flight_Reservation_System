package com.antriksh.app.model;

import javax.persistence.Entity;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity

@Component
@NoArgsConstructor
@AllArgsConstructor
public class User extends AbstractEntity {

  public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	// @NotBlank(message = " * user name can't be blank")
   //@Size(min = 5, max = 255, message = "Please enter between {min} and {max} characters.")
	private String firstName;
  // @NotBlank(message = " * user name can't be blank")
	private String lastName;
	//@NotBlank(message = " * user name can't be blank")
	//@Email(message = "Please enter a valid e-mail address")
	private String email;
	//@NotBlank(message = " * user name can't be blank")
	private String password;
}
