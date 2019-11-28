package epsi.commandesmonitoring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import epsi.commandesmonitoring.model.Commande;
import epsi.commandesmonitoring.model.Etat;
import epsi.commandesmonitoring.repository.CommandeRepository;



@Controller
public class CommandeController{
	
	@Autowired
	CommandeRepository commandeRepository;
	
	
    @GetMapping({"/commandes"})
	public String getAllCommandes(Model model){
		model.addAttribute("listCommandes", commandeRepository.findAll());
		System.out.println(commandeRepository.findAll());
		return "commandes";
	}
    
    @PostMapping({"/commandes?#{id}"})
	public String changeStateCommandes(@PathVariable(name="#{id}")Long id){
    	System.err.println("ID : " +id);
    	//Commande commande = commandeRepository.findById(id).orElseThrow(IllegalArgumentException::new);
    	//commande.setEtat(Etat.FINI);
    	//commandeRepository.save(commande);
    	return "finish";
	}


}
