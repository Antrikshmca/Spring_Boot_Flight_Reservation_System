package com.antriksh.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.antriksh.app.model.AbstractEntity;

public interface IAbstractEntityRepository extends JpaRepository<AbstractEntity, Long> {

}
