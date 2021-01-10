package com.antriksh.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.antriksh.app.model.Reservation;

public interface IReservationRepository extends JpaRepository<Reservation, Long> {

}
