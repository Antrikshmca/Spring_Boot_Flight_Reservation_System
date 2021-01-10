package com.antriksh.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.antriksh.app.model.Passenger;

public interface IPassengerRepository extends JpaRepository<Passenger, Long> {

}
