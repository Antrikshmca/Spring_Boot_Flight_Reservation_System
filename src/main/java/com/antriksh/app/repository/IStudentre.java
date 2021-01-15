package com.antriksh.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.antriksh.app.model.Student;

public interface IStudentre extends JpaRepository<Student, Integer> {

}
