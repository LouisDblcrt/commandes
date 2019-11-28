package epsi.commandesmonitoring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import epsi.commandesmonitoring.model.Commande;
@Repository
public interface CommandeRepository extends JpaRepository<Commande, Long>{

	
}
