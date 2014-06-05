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
public class BasicController {
	
	@Autowired
	private ActorService service;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String goHome(){
		
		return "home";
	}
	
	@RequestMapping(value="/details", method =RequestMethod.GET )
	public String showDetails(Model model){
		
		
		List<Actor> actors = service.retrieveAll();
		
		model.addAttribute("actors", actors);
		model.addAttribute("title", "Show all actors");
		
		return "details";
	}

}
