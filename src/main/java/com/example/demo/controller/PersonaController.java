package com.example.demo.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.Dao.PersonaDao;
import com.example.demo.model.Persona;
import com.example.demo.service.PersonaService;

@RestController
@RequestMapping("/person")
public class PersonaController {
	
	private PersonaService service;
	
	@Autowired
	public void setService(PersonaService service) {
		this.service = service;
	}
	
	 @RequestMapping(value = "/getUSuarios" , method = RequestMethod.GET)
	 public Iterable<Persona> getPersona(){
		 return this.service.getAllPerson();
	 }
	 
	    @RequestMapping(value = "/saveOrupdate", method = RequestMethod.POST)
	    public String saveOrupdate(Persona person) 
	    {
	        this.service.savePerson(person);
			return "home";
	    }
	    
	    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	    public String deleteContact(@PathVariable Integer id) {
	        this.service.deletePerson(id);
	        return "redirect:/persons";
	    }
	
	
	
}
