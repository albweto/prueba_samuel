package com.example.demo.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Persona;

public interface PersonaDao extends CrudRepository<Persona, Integer> 
{
	
}
