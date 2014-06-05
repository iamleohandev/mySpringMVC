package com.leo.han.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leo.han.beans.Actor;
import com.leo.han.service.ActorService;

@Controller
public class ActorController {
	
	@Autowired
	private ActorService service;
	
	
	@RequestMapping(value="/actors", method =RequestMethod.GET )
	public String showDetails(Model model){
		
		
		List<Actor> actors = service.retrieveAll();
		
		model.addAttribute("actors", actors);
		model.addAttribute("title", "Show all actors");
		
		return "actors";
	}
	
	
	@RequestMapping(value="/addactor", method =RequestMethod.GET )
	public String addActor(){
		
		return "addactor";
	}
	
	@RequestMapping(value="/addactorresult", method =RequestMethod.POST )
	public String addActorResult(Model model, Actor actor){
		
		service.addActor(actor);
		
		model.addAttribute("actor", actor);
		
		return "addactorresult";
	}
	
	

}
