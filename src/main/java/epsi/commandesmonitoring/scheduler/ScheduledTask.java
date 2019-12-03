package epsi.commandesmonitoring.scheduler;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import epsi.commandesmonitoring.repository.CommandeRepository;

@Component
public class ScheduledTask {

	@Autowired
	CommandeRepository commandeRepository;

	@Scheduled(fixedDelayString = "PT10H")
	public void insertBatch() {
		
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date date = new Date(utilDate.getTime());
		for(int i =0; i<334;i++) {
			commandeRepository.insertCommande(1, 0, date);	
		}
		for(int i =0; i<334;i++) {
			commandeRepository.insertCommande(2, 0, date);	
		}
		for(int i =0; i<334;i++) {
			commandeRepository.insertCommande(3, 0, date);	
		}
		
	}
}
