package com.example.demo.service;

import java.util.Optional;

import com.example.demo.model.Persona;

public interface PersonaService {
	Iterable<Persona> getAllPerson();
	Optional<Persona> getPersonById(Integer id);
	Persona savePerson(Persona person);
    void deletePerson(Integer id);
}
