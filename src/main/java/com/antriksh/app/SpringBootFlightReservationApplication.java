package com.antriksh.app;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringBootFlightReservationApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(SpringBootFlightReservationApplication.class, args);
		System.out.println("Mission suceesful");
		String[] array = {"a", "b", "c"};
        Set<String> set = new HashSet<>(Arrays.stream(array).collect(Collectors.toSet()));

        System.out.println("Set: " + set);
	
		
	}

}
