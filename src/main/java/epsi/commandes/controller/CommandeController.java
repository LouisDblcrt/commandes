package epsi.commandes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import epsi.commandes.repository.CommandeRepository;

@Controller
public class CommandeController{
	
	@Autowired
	CommandeRepository commandeRepository;
	
	@RequestMapping("/commandes")
	public String getAllCommandes(Model model){
		model.addAttribute("commandes", commandeRepository.findAll());
		return "commandes";
	}

}
