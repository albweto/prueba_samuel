package com.example.demo.service;

import java.util.Optional;

import com.example.demo.Dao.PersonaDao;
import com.example.demo.model.Persona;

public class PersonaServiceImpl implements PersonaService {
	
	private PersonaDao daoService;

	@Override
	public Iterable<Persona> getAllPerson() {
		// TODO Auto-generated method stub
		return this.daoService.findAll();
	}

	@Override
	public Optional<Persona> getPersonById(Integer id) {
		// TODO Auto-generated method stub
		return this.daoService.findById(id);
	}

	@Override
	public Persona savePerson(Persona person) {
		// TODO Auto-generated method stub
		return this.daoService.save(person);
	}
	
	@Override
	public void deletePerson(Integer id) {
		// TODO Auto-generated method stub
		this.daoService.deleteById(id);
	}
	
	

}
