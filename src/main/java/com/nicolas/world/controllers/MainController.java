package com.nicolas.world.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nicolas.world.services.APIService;

@Controller
public class MainController {

	@Autowired
	private APIService serv;
	
	@GetMapping("/")
	public String raiz(Model m) {
		m.addAttribute("hablaSloveno",serv.paisesHablaSlovene());
		m.addAttribute("totalCiudadesPais",serv.totalCiudadesPais());
		m.addAttribute("ciudadesMexico",serv.ciudadesMexico());
		m.addAttribute("mayora89",serv.mayora89());
		m.addAttribute("areaPob",serv.areaPoblacion());
		m.addAttribute("monarquia",serv.monarquia());
		m.addAttribute("argentina",serv.argentina());
		m.addAttribute("sumarPaises",serv.sumarPaises());
		return "index.jsp";
	}
}
